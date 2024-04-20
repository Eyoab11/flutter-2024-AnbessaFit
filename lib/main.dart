import 'package:flutter/material.dart';
import 'package:workout_plan/pages/addplan.dart';
import 'package:workout_plan/pages/workoutplan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Workoutplan(),
      routes: {
        '/addplan' : (context) => Addplan(),
      },
    );
  }
}
