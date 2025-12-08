// lib/screens/home/home_screen.dart
import 'package:flutter/material.dart';

import '../basic_learning/basic_learning_screen.dart';
import '../bookmark/bookmark_screen.dart';
import '../practice/practice_screen.dart';
import '../mock_exam/mock_exam_screen.dart';
import '../check_questions/check_questions_screen.dart';
import '../settings/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <_HomeMenuItem>[
      _HomeMenuItem(
        label: '基礎学習',
        icon: Icons.menu_book_outlined,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const BasicLearningScreen(),
            ),
          );
        },
      ),
      _HomeMenuItem(
        label: 'しおり',
        icon: Icons.bookmark_outline,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const BookmarkScreen(),
            ),
          );
        },
      ),
      _HomeMenuItem(
        label: '練習問題',
        icon: Icons.quiz_outlined,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const PracticeScreen(),
            ),
          );
        },
      ),
      _HomeMenuItem(
        label: '模擬試験',
        icon: Icons.assignment_turned_in_outlined,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const MockExamScreen(),
            ),
          );
        },
      ),
      _HomeMenuItem(
        label: 'チェック問題',
        icon: Icons.checklist_rtl,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const CheckQuestionsScreen(),
            ),
          );
        },
      ),
      _HomeMenuItem(
        label: '設定',
        icon: Icons.settings_outlined,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const SettingsScreen(),
            ),
          );
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('AWSクラプラ攻略アプリ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2, // スマホで2列
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1.1,
          children: items
              .map(
                (item) => _HomeMenuCard(item: item),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _HomeMenuItem {
  const _HomeMenuItem({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;
}

class _HomeMenuCard extends StatelessWidget {
  const _HomeMenuCard({super.key, required this.item});

  final _HomeMenuItem item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: item.onTap,
      borderRadius: BorderRadius.circular(16),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  item.icon,
                  size: 36,
                ),
                const SizedBox(height: 12),
                Text(
                  item.label,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
