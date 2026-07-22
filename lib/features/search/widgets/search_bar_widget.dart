import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderColor, 
          width: 1.5,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        maxLines: null,
        decoration: InputDecoration(
          label: RichText( 
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Search for a course, skill, or topic\n',
                  style: TextStyles.font14hintcolorregular.copyWith(
                    color: AppColors.homeBlack, 
                    height: 1.4,
                  ),
                ),
                TextSpan(
                  text: 'Any skill · At your own pace · Start now',
                  style: TextStyles.font12hintcolorregular.copyWith(
                    fontSize: 13.sp, 
                    color: AppColors.lightgrey,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.mainBlack, 
            size: 24,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
        ),
      ),
    );
  }
}