import 'package:flutter/material.dart';

class Chapter7Screen extends StatelessWidget {
  const Chapter7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('第7章：セキュリティとIAM'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '第7章：セキュリティとIAM',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'ここに「IAMユーザー／ロール」「暗号化とKMS」'
              '「Shield・WAF・Inspectorなど」のテキストを入れていく予定。',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
