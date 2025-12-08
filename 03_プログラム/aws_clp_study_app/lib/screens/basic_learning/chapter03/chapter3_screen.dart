import 'package:flutter/material.dart';

class Chapter3Screen extends StatelessWidget {
  const Chapter3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('第3章：コンピューティング'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '第3章：コンピューティング基礎（EC2・Lambdaなど）',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'ここに「EC2の役割」「サーバレス（Lambda）」「コンテナ（ECS/EKS）」'
              '「ELB＋Auto Scaling」のテキストを入れていく予定。',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
