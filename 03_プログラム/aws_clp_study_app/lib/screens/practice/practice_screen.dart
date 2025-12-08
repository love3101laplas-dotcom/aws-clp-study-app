// lib/screens/practice/practice_screen.dart
import 'package:flutter/material.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('練習問題'),
      ),
      body: const Center(
        child: Text(
          '章別の練習問題を選ぶ画面',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
