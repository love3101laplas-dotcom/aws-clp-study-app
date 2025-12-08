import 'package:flutter/material.dart';

class Chapter6Screen extends StatelessWidget {
  const Chapter6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('第6章：データベースと分析'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '第6章：データベースと分析',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'ここに「RDS・Aurora・DynamoDB」「Redshiftなどの分析系」'
              '「マネージドDBのメリット」のテキストを入れていく予定。',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
