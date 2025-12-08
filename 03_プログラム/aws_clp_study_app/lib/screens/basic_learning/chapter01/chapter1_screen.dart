import 'package:flutter/material.dart';

class Chapter1Screen extends StatelessWidget {
  const Chapter1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('第1章：AWSとは'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '第1章：AWSとは（クラウドの入り口）',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'ここに「クラウドとは？オンプレとの違い」「AWSの全体イメージ」'
              '「共有責任モデル」のテキストを入れていく予定。',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
