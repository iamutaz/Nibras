import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/app_regex.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_cubit.dart';
import 'package:nibras/features/setting/data/models/forgetpassword/forget_password_request_body.dart';
import 'package:nibras/features/setting/widgets/forgetpassword/submit_email_listiner.dart';
import 'package:nibras/features/signup/signup.dart';

class EmailSubmit extends StatelessWidget {
  const EmailSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Forgot Password?", style: TextStyles.font16titleblackbold),
        leading: InkWell(
          onTap: () => context.pop(),

          child: Icon(Icons.arrow_back_ios, size: 14, color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.5),
          child: Divider(color: AppColors.avatarColor, height: 1.0),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Don't worry!\nEnter the email address associated with your account and we'll send you a password reset code.",
              style: TextStyles.font14authblackbold,
            ),
            SizedBox(height: 48.h),
            FormBody(
              title: "Email Address",
              hint: "admin@alufuq.com",
              prefixpath: 'assets/svg/email.svg',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "this feild can't be empty";
                }
                if (!AppRegex.isEmailValid(value)) {
                  return "invalid email format";
                }
              },
              controller: context.read<ForgetPasswordCubit>().emailcontroller,
            ),
            SizedBox(height: 24.h),
            AppTextButton(
              onpressed: () {
                context.read<ForgetPasswordCubit>().emitSubmitEmailState(
                  ForgetPasswordRequestBody(
                    email: context
                        .read<ForgetPasswordCubit>()
                        .emailcontroller
                        .text,
                  ),
                );
              },
              textButton: "Send Verification Code",
              textStyle: TextStyles.font16authblackbold,
            ),
            SubmitEmailListiner()
          ],
        ),
      ),
    );
  }
}
