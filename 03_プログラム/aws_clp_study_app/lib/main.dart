// lib/main.dart
import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(const AwsClpStudyApp());
}

class AwsClpStudyApp extends StatelessWidget {
  const AwsClpStudyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AWSクラプラ攻略アプリ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
