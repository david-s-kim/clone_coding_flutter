import 'package:flutter/material.dart';

import '../tabs/home_tab.dart';
import '../tabs/shorts_tab.dart';
import '../tabs/storage_tab.dart';
import '../tabs/subscribe_tab.dart';
import '../tabs/upload_tab.dart';

class MainScreen extends StatefulWidget {

  const MainScreen({super.key, });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> cards = ['전체', '게임', '뉴스', '실시간', '믹스', '액션'];
    final List<Widget> tabs = [
      HomeTab(),
      const ShortsTab(),
      const StorageTab(),
      const SubscribeTab(),
      const UploadTab(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: IconButton(
          onPressed: () {},
          icon: const Image(
            image: AssetImage('assets/images/youtube_logo.png'),
            fit: BoxFit.contain,
          ),
            iconSize: 40.0,
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 10.0),
            onPressed: () {},
            icon: const Icon(Icons.add_card),
            color: Colors.white,
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 10.0),
            onPressed: () {},
            icon: const Icon(Icons.add_alert),
            color: Colors.white,
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 10.0),
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 10.0),
            onPressed: () {},
            icon: const Icon(Icons.person_2_rounded),
            color: Colors.white,
          ),
        ],
      ),
      body: tabs[_selectedIndex],

      bottomNavigationBar:
      BottomNavigationBar(
        backgroundColor: Colors.black87,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈',),
          BottomNavigationBarItem(icon: Image.asset('assets/images/shorts.png'), label: 'Shorts'),
          const BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: ''),
          BottomNavigationBarItem(icon: Image.asset('assets/images/subscribe.png'), label: '구독'),
          const BottomNavigationBarItem(icon: Icon(Icons.storage), label: '보관함'),
        ],
        selectedItemColor: Colors.white,
      ),
    );
  }
}
