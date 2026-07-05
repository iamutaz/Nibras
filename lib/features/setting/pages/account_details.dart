import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/core/widgets/app_text_form_feild.dart';
import 'package:nibras/features/signup/signup.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => context.pop(),
          child: Icon(Icons.arrow_back_ios, size: 14, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Account Details", style: TextStyles.font16titleblackbold),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              Divider(color: AppColors.avatarColor),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0.h),
                child: CircleAvatar(
                  backgroundColor: AppColors.avatarColor,
                  radius: 35.r,
                  backgroundImage: AssetImage(
                    'assets/svg/profile_circle_gray.svg',
                  ),
                  child: SvgPicture.asset(
                    "assets/svg/profile_vector.svg",
                    height: 30.h,
                    width: 30.w,
                  ),
                ),
              ),
              FormBody(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this feild can't be empty";
                  }
                },
                title: "Full Name",
                hint: "Aizen Souske",
                prefixpath: "assets/svg/profile_vector.svg",
              ),
              FormBody(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this feild can't be empty";
                  }
                },
                title: "Email Address",
                hint: "Ahmad.Mohamed@Example.com",
                prefixpath: "assets/svg/profile_vector.svg",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: AppTextButton(
            onpressed: () {},
            textButton: "Save Changes",
            textStyle: TextStyles.font16homeblackbold,
          ),
        ),
      ),
    );
  }
}
