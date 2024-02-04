import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pause_timer/app_repository.dart';
import 'package:pause_timer/button_widget.dart';

// class ButtonWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AppRepository>(
//       builder: (context, repo, child) {
//         final isRunning = repo.timer == null ? false : repo.timer!.isActive;

//         if (isRunning) {
//           return ElevatedButton(
//             onPressed: repo.stopTimer,
//             child: const Text('Stop'),
//           );
//         }

//         return ElevatedButton(
//           onPressed: repo.startTimer,
//           child: const Text('Start'),
//         );
//       },
//     );
//   }
// }

class ButtonBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppRepository>(
      builder: (context, repo, child) {
        final isRunning = repo.timer == null ? false : repo.timer!.isActive;

        if (isRunning) {
          return ButtonWidget(text: "Stop", onClicked: repo.stopTimer);
        }

        return ButtonWidget(
          text: "Start",
          onClicked: repo.startTimer,
        );
      },
    );
  }
}
