import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeBotNavBar extends StatelessWidget {
  HomeBotNavBar({required this.currentIndex, required this.onTabChange, super.key});
  int currentIndex;
  final ValueChanged<int> onTabChange;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
          child: GNav(
            selectedIndex: currentIndex,
            onTabChange: onTabChange,

            gap: 6,
            color: Colors.black54,
            activeColor: Colors.deepPurple,

            tabBackgroundColor: const Color(0xFFF2EDFF),

            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),

            tabs: const [
              GButton(icon: Icons.home_rounded, text: "Home"),
              GButton(icon: Icons.search_rounded, text: "Search"),

              // Leaderboard
              GButton(icon: Icons.leaderboard_rounded, text: "Leaderboard"),

              GButton(icon: Icons.person_rounded, text: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
