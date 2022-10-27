import 'package:flutter/material.dart';
import 'package:logintest/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Integration testing",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LogInView(),
    );
  }
}
