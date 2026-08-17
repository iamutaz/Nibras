import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart' show TextStyles;
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/details/data/cubit/enrollment_course_cubit.dart';
import 'package:nibras/features/details/data/models/enrollment_request_body.dart';
import 'package:nibras/features/details/widget/enrollment_bloc_listner.dart';
import 'package:nibras/features/wishlist/data/cubit/add_to_wishlist_cubit.dart';
import 'package:nibras/features/wishlist/data/model/add_to_wishlist_request_body.dart';
import 'package:nibras/features/wishlist/widgets/add_to_wishlist_bloclisitner.dart';

class BuyField extends StatelessWidget {
  final String discountedprice;
  final bool isFree;
  final int courseId;

  const BuyField({
    super.key,
    required this.courseId,
    required this.discountedprice,
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
                  onpressed: () {
                    context.read<AddToWishlistCubit>().emitAddToWishlist(
                      AddToWishlistRequestBody(courseId: courseId),
                    );
                  },
                  textButton: "Add to WishList",
                  textStyle: TextStyles.font16authblackbold,
                ),
                SizedBox(height: 16.h),
                AppTextButton(
                  onpressed: () {
                    if (isFree) {
                      context.read<EnrollmentCourseCubit>().emitEnrollInCourse(
                        EnrollmentRequestBody(courseId: courseId),
                      );
                    } else {
                      context.pushNamed(RoutesName.payment);
                    }
                  },
                  buttoncolor: Colors.white,
                  textButton: isFree ? "ENROLL NOW!" : "Buy NOW!",
                  textStyle: TextStyles.font16mainbluebold,
                  borderColor: AppColors.mainBlue,
                  borderWidth: 2,
                ),
                EnrollmentBlocListener(),
                AddToWishlistBloclisitner(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
