import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';

import '../../data/datasources/onboarding_local_data_source.dart';
import '../widgets/onboarding_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController pageController = PageController();
  final items = OnboardingLocalDataSource().getOnboardingItems();

  int currentIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void nextPage() {
    if (currentIndex == items.length - 1) {
      Navigator.pushReplacementNamed(context, RoutesName.loginwithgoogle);
      return;
    }

    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: items.length,
              onPageChanged: (index) {
                setState(() => currentIndex = index);
              },
              itemBuilder: (context, index) {
                return OnboardingContent(item: items[index]);
              },
            ),
            Positioned(
              right: 24.w,
              bottom: 30.h,
              child: GestureDetector(
                onTap: nextPage,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 86.w,
                      height: 86.h,
                      child: CustomPaint(
                        painter: ProgressArcPainter(
                          progress: (currentIndex + 1) / items.length,
                        ),
                      ),
                    ),
                    Container(
                      width: 68.w,
                      height: 68.h,
                      decoration: const BoxDecoration(
                        color: AppColors.mainYellow,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: AppColors.mainBlack,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProgressArcPainter extends CustomPainter {
  final double progress;

  const ProgressArcPainter({
    required this.progress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint()
      ..color = const Color(0xFFF5FFCC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.7
      ..strokeCap = StrokeCap.round;

    final progressPaint = Paint()
      ..color = AppColors.mainBlack
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.7
      ..strokeCap = StrokeCap.round;

    final rect = Rect.fromLTWH(
      -2,
      -2,
      size.width + 4,
      size.height + 4,
    );

    canvas
      ..drawArc(rect, 0, 6.28, false, backgroundPaint)
      ..drawArc(rect, -1.57, progress * 6.28, false, progressPaint);
  }

  @override
  bool shouldRepaint(covariant ProgressArcPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}