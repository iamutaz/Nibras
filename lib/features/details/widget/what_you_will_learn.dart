import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class WhatYouWillLearn extends StatelessWidget {
  List<String> learnings;
  WhatYouWillLearn({super.key, required this.learnings});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What you'll learn", style: TextStyles.font18blackdetailsmiduem),
          SizedBox(height: 16.h),
          ListView.builder(
            itemCount: learnings.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Icon(Icons.check, color: AppColors.lightgrey),
                  SizedBox(width: 8),
                  Text(
                    learnings[index],
                    style: TextStyles.font12lightgreymedium,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
