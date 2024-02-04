import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';

class AppRepository extends ChangeNotifier {
  static const maxSeconds = 5;

  int seconds = maxSeconds;
  int currentSec = -1;
  int randomInt = Random().nextInt(6);
  int numberOfAttempt = 0;
  int numberOfSuccess = 0;
  String message = "Good Luck !!";
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _updateTimer();
    });
  }

  void stopTimer() {
    timer?.cancel();
    _updateCurrentSec();
    _updateRandomInt();
    numberOfAttempt++;
    _updateResult();
  }

  void _updateTimer() {
    seconds--;
    if (seconds < 0) {
      seconds = maxSeconds;
    }
    notifyListeners();
  }

  void _updateCurrentSec() {
    currentSec = seconds;
    seconds = maxSeconds;
    notifyListeners();
  }

  void _updateRandomInt() {
    randomInt = Random().nextInt(6);
    notifyListeners();
  }

  void _updateResult() {
    if (currentSec != randomInt) {
      message = "Sorry !! Try Again!";
    } else {
      numberOfSuccess++;
      message = "Success :)";
    }
    notifyListeners();
  }
}
