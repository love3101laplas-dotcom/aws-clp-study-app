import 'package:flutter/material.dart';

class Chapter12Screen extends StatelessWidget {
  const Chapter12Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('第12章：ハイブリッド・移行・接続'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '第12章：ハイブリッド・移行・接続オプション',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'ここに「VPN・Direct Connect」「Storage Gatewayや移行ツール」'
              '「段階的な移行戦略」のテキストを入れていく予定。',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
