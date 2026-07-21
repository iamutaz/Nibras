import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/DI/injection.dart';
import 'package:nibras/features/Home/data/cubit/home_cubit.dart';
import 'package:nibras/features/Home/data/cubit/recommended_cubit.dart';
import 'package:nibras/features/Home/home.dart';
import 'package:nibras/features/Home/widgets/home_bot_nav_bar.dart';
import 'package:nibras/features/leaderboard/leaderboard_page.dart';
import 'package:nibras/features/search/search_page.dart';
import 'package:nibras/features/setting/data/cubits/logoutcubit/logout_cubit.dart';
import 'package:nibras/features/setting/pages/setting_page.dart';

class NavigatorHome extends StatefulWidget {
  const NavigatorHome({super.key});

  @override
  State<NavigatorHome> createState() => _NavigatorHomeState();
}

class _NavigatorHomeState extends State<NavigatorHome> {
  int currentIndex = 0;

  final List<Widget> pages = [
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<HomeCubit>()),
        BlocProvider(create: (context) => getIt<RecommendedCubit>()),
      ],
      child: Home(),
    ),
    SearchPage(),
    LeaderboardPage(),
    BlocProvider(
      create: (context) => getIt<LogoutCubit>(),
      child: SettingPage(),
    ),
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
