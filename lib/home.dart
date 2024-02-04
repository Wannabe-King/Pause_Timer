import 'package:flutter/material.dart';
import 'package:pause_timer/current_seconds_widget.dart';
import 'package:pause_timer/random_number_widget.dart';
import 'package:pause_timer/result_widget.dart';
import 'package:pause_timer/timer_widget.dart';
import 'button_builder.dart';

class Home extends StatelessWidget {
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
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width * 0.42,
                child: CurrentSecondsWidget(),
              ),
              const Spacer(),
              Container(
                width: MediaQuery.of(context).size.width * 0.42,
                child: RandomNumberWidget(),
              ),
            ],
          ),
          ResultWidget(),
          TimerWidget(),
          ButtonBuilder(),
        ],
      ),
    );
  }
}
