import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pause_timer/app_repository.dart';

class RandomNumberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFF000000),
          width: 1.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
      child: Column(
        children: [
          const Text(
            'Random Number',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          const Divider(
            color: Colors.black45,
          ),
          Consumer<AppRepository>(
            builder: (context, repo, child) => Text('${repo.randomInt}'),
          ),
        ],
      ),
    );
  }
}
