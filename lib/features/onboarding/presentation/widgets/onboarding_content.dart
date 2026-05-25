import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

import '../../domain/entities/onboarding_item.dart';

class OnboardingContent extends StatelessWidget {
  final OnboardingItem item;

  const OnboardingContent({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),

        Expanded(
          flex: 5,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight + 20.h,
                child: Transform.translate(
                  offset: Offset(0, 20.h),
                  child: Image.asset(
                    item.image,
                    width: constraints.maxWidth,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              );
            },
          ),
        ),

        Expanded(
          flex: 2,
          child: Transform.translate(
            offset: Offset(0, -40.h),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.06,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 0,
                          bottom: 6.h,
                          child: Container(
                            width: item.highlightWidth,
                            height: 10.h,
                            color: AppColors.mainYellow,
                          ),
                        ),
                        Text(
                          item.title,
                          style: TextStyles.font28blackbold.copyWith(
                            height: 1.1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.h),
                  Text(
                    item.description,
                    style: TextStyles.font20blackregular.copyWith(
                      color: AppColors.grey,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        SizedBox(height: 20.h),
      ],
    );
  }
}