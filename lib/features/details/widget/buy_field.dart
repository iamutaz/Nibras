import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart' show TextStyles;
import 'package:nibras/core/widgets/app_text_button.dart';

class BuyField extends StatelessWidget {
  final String discountedprice;
  final String? originalprice;
  final bool isFree;

  const BuyField({
    super.key,
    required this.discountedprice,
    this.originalprice,
    this.isFree = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 32.h),
      child: Expanded(
        child: Container(
          width: double.infinity,
          // height: 292.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(8),
            border: Border.all(color: AppColors.borderColor),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: isFree ? 'Free' : '\$$discountedprice',
                        style: TextStyles.font20mainbluesemiBold,
                      ),
                      if (!isFree)
                        TextSpan(
                          text: '  \$$originalprice',
                          style: TextStyles.font14hintcolorregular,
                        ),
                      if (!isFree)
                        TextSpan(
                          text: '    20% off',
                          style: TextStyles.font16mainblueregular,
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                // if (!isFree)
                Text(
                  "3 days left at this price!",
                  style: TextStyles.font12redmiduem,
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_outlined,
                      color: AppColors.lighterBlack,
                      size: 14,
                    ),
                    Text(
                      "  Full lifetime access",
                      style: TextStyles.font12lightgreymedium,
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                AppTextButton(
                  onpressed: () {},
                  textButton: "Add to WishList",
                  textStyle: TextStyles.font16authblackbold,
                ),
                SizedBox(height: 16.h),
                AppTextButton(
                  onpressed: () {},
                  buttoncolor: Colors.white,
                  textButton: "Buy NOW!",
                  textStyle: TextStyles.font16mainbluebold,
                  borderColor: AppColors.mainBlue,
                  borderWidth: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
