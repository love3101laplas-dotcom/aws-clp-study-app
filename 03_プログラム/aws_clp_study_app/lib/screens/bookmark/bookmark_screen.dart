// lib/screens/bookmark/bookmark_screen.dart
import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('しおり'),
      ),
      body: const Center(
        child: Text(
          'しおりを付けた問題の一覧を表示する画面',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
