// lib/screens/mock_exam/mock_exam_screen.dart
import 'package:flutter/material.dart';

class MockExamScreen extends StatelessWidget {
  const MockExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('模擬試験'),
      ),
      body: const Center(
        child: Text(
          '模試セットを選んで受験する画面',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
