import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart' show RoutesName;
import 'package:nibras/core/theme/fonts/text_styles.dart';

class WelcomBackStack extends StatelessWidget {
  const WelcomBackStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/Head_login.png"),
        Positioned(
          top: 78.h,
          left: 18.w,
          child: InkWell(
            onTap: () => context.pop(),
            child: SvgPicture.asset("assets/svg/back_arrow_vector.svg"),
          ),
        ),
        Positioned(
          top: 93.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.h),
                Text("Welcome Back", style: TextStyles.font32whitebold),
                SizedBox(height: 18.h),
                Row(
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyles.font12whitemidium,
                    ),
                    InkWell(
                      onTap: () => context.pushNamed(RoutesName.signup),
                      child: Text(
                        "Sign Up",
                        style: TextStyles.font12mainyellowsemibold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}