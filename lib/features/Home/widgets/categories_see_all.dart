
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class CategoriesSeeAll extends StatelessWidget {
  const CategoriesSeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:  16.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Categories",style:TextStyles.font16homeblackbold),
          Text("See all",style:TextStyles.font12mainbluesemiBold),
        ],
      ),
    );
  }
}
