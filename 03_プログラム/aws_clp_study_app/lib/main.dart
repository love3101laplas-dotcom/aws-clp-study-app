import 'package:flutter/material.dart';

void main() {
  runApp(const AwsClpStudyApp());
}

class AwsClpStudyApp extends StatelessWidget {
  const AwsClpStudyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AWSクラプラ攻略アプリ(仮)',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const RootScreen(),
    );
  }
}

/// 画面下部に共通フッターナビ（タブバー）を持つ土台。
class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;

  // タブごとの画面（とりあえずダミー）
  static const List<Widget> _pages = <Widget>[
    _SimplePage(title: 'ホーム', description: 'ここから各モードに移動します'),
    _SimplePage(title: '基礎学習', description: '第1〜13章のテキスト学習画面'),
    _SimplePage(title: '練習問題', description: '章別の4択問題に挑戦'),
    _SimplePage(title: '模擬試験', description: '本番形式の模試モード'),
    _SimplePage(title: 'チェック（苦手克服）', description: '間違えた問題・チェックした問題を復習'),
    _SimplePage(title: '設定', description: '課金状況や各種設定'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String get _appBarTitle {
    switch (_selectedIndex) {
      case 0:
        return 'ホーム';
      case 1:
        return '基礎学習';
      case 2:
        return '練習問題';
      case 3:
        return '模擬試験';
      case 4:
        return 'チェック（苦手克服）';
      case 5:
        return '設定';
      default:
        return 'AWSクラプラ攻略アプリ(仮)';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // 6タブなのでfixed
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: '基礎学習',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: '練習問題',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: '模擬試験',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'チェック',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
      ),
    );
  }
}

/// とりあえずのダミー画面用Widget
class _SimplePage extends StatelessWidget {
  final String title;
  final String description;

  const _SimplePage({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            const Text(
              '※ 今はダミー画面です。ここから中身を作り込んでいく。',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
