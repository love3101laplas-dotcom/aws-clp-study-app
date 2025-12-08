// lib/screens/check_questions/check_questions_screen.dart
import 'package:flutter/material.dart';

class CheckQuestionsScreen extends StatelessWidget {
  const CheckQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('チェック問題'),
      ),
      body: const Center(
        child: Text(
          '間違えた問題・苦手問題を解く画面',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
