import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pause_timer/app_repository.dart';

class ResultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppRepository>(
      builder: (context, repo, child) {
        if (repo.message == "Success :)") {
          return Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.green),
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Text(
                repo.message,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              const Divider(
                color: Colors.black54,
              ),
              Text(
                'Score : ${repo.numberOfSuccess} / ${repo.numberOfAttempt}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ]),
          );
        } else if (repo.message == "Sorry !! Try Again!") {
          return Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.redAccent),
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Text(
                repo.message,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              const Divider(
                color: Colors.black54,
              ),
              Text(
                'Attempts : ${repo.numberOfAttempt}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ]),
          );
        } else {
          return Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.blueGrey),
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Text(
                repo.message,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              )
            ]),
          );
        }
      },
    );
  }
}
