import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pause_timer/button_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String message = "Start";

  static const maxSeconds = 5;
  int seconds = maxSeconds;
  int currentSec = 12;
  int randomNumber = 0;

  bool won = false;

  Timer? timer;

  startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        seconds--;
        if (seconds < 0) {
          seconds = 5;
        }
      });
    });
  }

  stopTimer(){
    timer?.cancel();
  }

  onClick() {
    currentSec = 60;
    result();
  }

  result() {
    if (!won) {
      message = "Sorry !! Try Again!";
    } else {
      message = "Success :)";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
          child: Text(
            'Pause Timer',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24.0,
                color: Colors.black),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width * 0.42,
                  child: Column(children: [
                    const Text('Current Seconds'),
                    const Divider(
                      color: Colors.black45,
                    ),
                    Text('$currentSec'),
                  ]),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width * 0.42,
                  child: Column(children: [
                    const Text('Random Number'),
                    const Divider(
                      color: Colors.black45,
                    ),
                    Text('$currentSec'),
                  ]),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.green),
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                )
              ]),
            ),
            Container(
              child: Text(
                '$seconds',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            buildButton(),
          ],
        ),
      ),
    );
  }

  Widget buildButton(){
    final isRunning= timer==null ? false: timer!.isActive;

    if(isRunning){
      return ButtonWidget(text: "Stop", onClicked: stopTimer);
    }

  return ButtonWidget(
    text: "Start",
    onClicked: startTimer,
  );
}

}
