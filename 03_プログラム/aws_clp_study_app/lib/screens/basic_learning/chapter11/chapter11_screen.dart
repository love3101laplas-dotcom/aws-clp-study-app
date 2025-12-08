import 'package:flutter/material.dart';

class Chapter11Screen extends StatelessWidget {
  const Chapter11Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('第11章：開発・デプロイ・自動化'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '第11章：開発・デプロイ・自動化のさわり',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'ここに「Elastic Beanstalk」「CloudFormation」「CodeシリーズとCI/CD」'
              'のテキストを入れていく予定。',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
