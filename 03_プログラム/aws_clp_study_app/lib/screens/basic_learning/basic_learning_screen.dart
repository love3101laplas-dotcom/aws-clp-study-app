// lib/screens/basic_learning/basic_learning_screen.dart
import 'package:flutter/material.dart';

import 'chapter01/chapter1_screen.dart';
import 'chapter02/chapter2_screen.dart';
import 'chapter03/chapter3_screen.dart';
import 'chapter04/chapter4_screen.dart';
import 'chapter05/chapter5_screen.dart';
import 'chapter06/chapter6_screen.dart';
import 'chapter07/chapter7_screen.dart';
import 'chapter08/chapter8_screen.dart';
import 'chapter09/chapter9_screen.dart';
import 'chapter10/chapter10_screen.dart';
import 'chapter11/chapter11_screen.dart';
import 'chapter12/chapter12_screen.dart';
import 'chapter13/chapter13_screen.dart';

class BasicLearningScreen extends StatelessWidget {
  const BasicLearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chapters = <_ChapterItem>[
      _ChapterItem(
        number: 1,
        title: '第1章：AWSとは（クラウドの入り口）',
        isLocked: false,
        builder: (_) => const Chapter1Screen(),
      ),
      _ChapterItem(
        number: 2,
        title: '第2章：AWSのグローバルインフラ',
        isLocked: false,
        builder: (_) => const Chapter2Screen(),
      ),
      _ChapterItem(
        number: 3,
        title: '第3章：コンピューティング基礎（EC2・Lambdaなど）',
        isLocked: false,
        builder: (_) => const Chapter3Screen(),
      ),
      _ChapterItem(
        number: 4,
        title: '第4章：ネットワークと接続',
        isLocked: false,
        builder: (_) => const Chapter4Screen(),
      ),
      _ChapterItem(
        number: 5,
        title: '第5章：ストレージ',
        isLocked: false,
        builder: (_) => const Chapter5Screen(),
      ),
      _ChapterItem(
        number: 6,
        title: '第6章：データベースと分析',
        isLocked: true, // 有料想定
        builder: (_) => const Chapter6Screen(),
      ),
      _ChapterItem(
        number: 7,
        title: '第7章：セキュリティとIAM',
        isLocked: true,
        builder: (_) => const Chapter7Screen(),
      ),
      _ChapterItem(
        number: 8,
        title: '第8章：監視・運用・ログ',
        isLocked: true,
        builder: (_) => const Chapter8Screen(),
      ),
      _ChapterItem(
        number: 9,
        title: '第9章：アーキテクチャ設計の基本',
        isLocked: true,
        builder: (_) => const Chapter9Screen(),
      ),
      _ChapterItem(
        number: 10,
        title: '第10章：コスト・料金・請求',
        isLocked: true,
        builder: (_) => const Chapter10Screen(),
      ),
      _ChapterItem(
        number: 11,
        title: '第11章：開発・デプロイ・自動化のさわり',
        isLocked: true,
        builder: (_) => const Chapter11Screen(),
      ),
      _ChapterItem(
        number: 12,
        title: '第12章：ハイブリッド・移行・接続オプション',
        isLocked: true,
        builder: (_) => const Chapter12Screen(),
      ),
      _ChapterItem(
        number: 13,
        title: '第13章：総まとめ＆試験テクニック',
        isLocked: true,
        builder: (_) => const Chapter13Screen(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('基礎学習（1〜13章）'),
      ),
      body: ListView.separated(
        itemCount: chapters.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = chapters[index];
          return ListTile(
            title: Text(item.title),
            leading: CircleAvatar(
              child: Text(item.number.toString()),
            ),
            trailing: Icon(
              item.isLocked ? Icons.lock_outline : Icons.chevron_right,
            ),
            onTap: () {
              // TODO: 課金制御実装時は isLocked を見て制御する
              Navigator.push(
                context,
                MaterialPageRoute(builder: item.builder),
              );
            },
          );
        },
      ),
    );
  }
}

class _ChapterItem {
  const _ChapterItem({
    required this.number,
    required this.title,
    required this.isLocked,
    required this.builder,
  });

  final int number;
  final String title;
  final bool isLocked;
  final WidgetBuilder builder;
}
