import 'package:flutter/material.dart';
import 'package:pause_timer/home.dart';
import 'package:provider/provider.dart';
import 'package:pause_timer/app_repository.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppRepository(),
      child: MaterialApp(
        home: Home(),
      ));
  }
}


