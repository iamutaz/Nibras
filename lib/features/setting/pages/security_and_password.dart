import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/app_regex.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/signup/signup.dart';

class SecurityAndPassword extends StatefulWidget {
  const SecurityAndPassword({super.key});

  @override
  State<SecurityAndPassword> createState() => _SecurityAndPasswordState();
}

class _SecurityAndPasswordState extends State<SecurityAndPassword> {
  bool isobscuretext = true;

  bool isobscurepassconfitext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          onTap: () => context.pop(),
          child: Icon(Icons.arrow_back_ios, size: 14, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Security And Password",
          style: TextStyles.font16titleblackbold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            Divider(color: AppColors.avatarColor),
            FormBody(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "this feild can't be empty";
                }
                if (!AppRegex.hasMinLength(value)) {
                  return "must be 8 length at least";
                }
              },
              title: "Current Password",
              hint: "••••••••••••••••••••••••••••••••",
              prefixpath: "assets/svg/lock.svg",
              isobscure: isobscuretext,
              suffix: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isobscuretext = !isobscuretext;
                    });
                  },
                  icon: Icon(
                    Icons.visibility_outlined,
                    color: isobscuretext ? AppColors.authblack : Colors.blue,
                  ),
                ),
              ),
            ),
            FormBody(
              validator: (value) {
                // if (value == null || value.isEmpty) {
                //   return "this feild can't be empty";
                // } else if (value != passcontroller.text) {
                //   return "no matching with the password";
                // }
              },
              title: "New Password",
              hint: "••••••••••••••••••••••••••••••••",
              prefixpath: "assets/svg/lock.svg",
              isobscure: isobscurepassconfitext,
              suffix: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isobscurepassconfitext = !isobscurepassconfitext;
                    });
                  },
                  icon: Icon(
                    Icons.visibility_outlined,
                    color: isobscurepassconfitext
                        ? AppColors.authblack
                        : Colors.blue,
                  ),
                ),
              ),
            ),
            FormBody(
              validator: (value) {
                // if (value == null || value.isEmpty) {
                //   return "this feild can't be empty";
                // } else if (value != passcontroller.text) {
                //   return "no matching with the password";
                // }
              },
              title: "Confirm new password",
              hint: "••••••••••••••••••••••••••••••••",
              prefixpath: "assets/svg/lock.svg",
              isobscure: isobscurepassconfitext,
              suffix: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isobscurepassconfitext = !isobscurepassconfitext;
                    });
                  },
                  icon: Icon(
                    Icons.visibility_outlined,
                    color: isobscurepassconfitext
                        ? AppColors.authblack
                        : Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: AppTextButton(
            onpressed: () {},
            textButton: "update Password",
            textStyle: TextStyles.font16homeblackbold,
          ),
        ),
      ),
    );
  }
}
