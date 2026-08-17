import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    super.key,
    required this.username,
    this.avatarUrl, 
  });

  final String username;
  final String? avatarUrl; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 32.r,
            backgroundColor: AppColors.avatarColor,
            backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl!) : null, 
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome, $username ",
                  style: TextStyles.font16homeblackbold,
                ),
                InkWell(
                  child: Text(
                    "Edit occupation and interests",
                    style: TextStyles.font14mainbluesemiBold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            child: SvgPicture.asset("assets/svg/cart.svg"),
            onTap: () => print("Cart tapped"),
          )
        ],
      ),
    );
  }
}