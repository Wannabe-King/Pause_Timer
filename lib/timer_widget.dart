import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pause_timer/app_repository.dart';

class TimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppRepository>(
      builder: (context, repo, child) => SizedBox(
        width: 100,
        height: 100,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: repo.seconds / AppRepository.maxSeconds,
              strokeWidth: 12,
            ),
            Center(
              child: Text(
                '${repo.seconds}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 40),
              ),
            )
          ],
        ),
      ),
    );
  }
}
