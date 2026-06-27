import 'package:flutter/material.dart';
import 'package:nibras/features/Home/home.dart';
import 'package:nibras/features/Home/widgets/home_bot_nav_bar.dart';
import 'package:nibras/features/leaderboard/leaderboard_page.dart';
import 'package:nibras/features/search/search_page.dart';
import 'package:nibras/features/setting/setting_page.dart';


class NavigatorHome extends StatefulWidget {
  const NavigatorHome({super.key});

  @override
  State<NavigatorHome> createState() => _NavigatorHomeState();
}

class _NavigatorHomeState extends State<NavigatorHome> {
  int currentIndex = 0;

  final List<Widget> pages = [
    Home(),
    SearchPage(),
    LeaderboardPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: HomeBotNavBar(
        currentIndex: currentIndex,
        onTabChange: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}