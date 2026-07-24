import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => context.pop(),

          child: Icon(Icons.arrow_back_ios, size: 14, color: Colors.black),
        ),

        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Terms and Privacy",
          style: TextStyles.font16titleblackbold,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.5),
          child: Divider(color: AppColors.avatarColor, height: 1.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Last updated: January 1, 2026",
                style: TextStyles.font10lightgreymedium,
              ),
              TermBody(
                title: "1. Acceptance of Terms",
                descreption:
                    "By using the \"Nibras\" application, you agree to be bound by these Terms and Conditions. If you do not agree to any part of them, please do not use the application.",
              ),
              TermBody(
                title: "2. Intellectual Property Rights",
                descreption:
                    "All educational content, videos, and texts within the application are the exclusive property of the instructors and the \"Nibras\" platform. Downloading or republishing any content without prior permission is strictly prohibited.",
              ),
              TermBody(
                descreption:
                    "We offer a 14-day refund policy from the date of purchase, provided that the student has viewed no more than 20% of the course content.",
                title: "3. Refund Policy",
              ),
              TermBody(
                descreption:
                    "We collect basic data such as name, email address, and geographic location (to determine the appropriate payment currency) to enhance your learning experience.",
                title: '4. Data Collection',
              ),
              TermBody(
                descreption:
                    "All passwords are stored encrypted using Bcrypt technology, and your personal data is not shared with any third parties for marketing purposes.",
                title: "5. Data Protection",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TermBody extends StatelessWidget {
  final String title;
  final String descreption;
  const TermBody({super.key, required this.descreption, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyles.font14authblackbold),
          Text(descreption, style: TextStyles.font14darkgreyregular),
        ],
      ),
    );
  }
}
