import 'package:flutter/material.dart';

class Chapter9Screen extends StatelessWidget {
  const Chapter9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('第9章：アーキテクチャ設計'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '第9章：アーキテクチャ設計の基本',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'ここに「疎結合・スケーラビリティ・耐障害性」'
              '「三層構成」「マルチAZ／マルチリージョン」のテキストを入れていく予定。',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
