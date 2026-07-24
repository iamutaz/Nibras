import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_cubit.dart';
import 'package:nibras/features/setting/data/models/forgetpassword/forget_password_request_body.dart';
import 'package:nibras/features/setting/widgets/forgetpassword/submit_code_lisitner.dart';
import 'package:pinput/pinput.dart';

class InsertCode extends StatelessWidget {
  final String email;

  const InsertCode({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 58,
      height: 58,
      textStyle: TextStyles.font20blackbold.copyWith(
        fontWeight: FontWeight.w500,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderColor, width: 1.5),
      ),
    );
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
          children: [
            Text(
              "Check your email.\nEnter the 4-digit code we just sent to ah******@example.com.",
              style: TextStyles.font14authblackbold,
            ),
            SizedBox(height: 48.h),
            Pinput(
              length: 6,
              keyboardType: TextInputType.number,

              focusedPinTheme: defaultPinTheme.copyDecorationWith(
                border: Border.all(color: AppColors.mainYellow, width: 2),
              ),
              submittedPinTheme: defaultPinTheme.copyDecorationWith(
                border: Border.all(color: AppColors.borderColor, width: 1),
              ),
              errorPinTheme: defaultPinTheme.copyDecorationWith(
                border: Border.all(color: Colors.red, width: 2),
              ),
              followingPinTheme: defaultPinTheme,
              controller: context.read<ForgetPasswordCubit>().codecontroller,
              onCompleted: (pin) {
                context.read<ForgetPasswordCubit>().emitSubmitCodeState(
                  ForgetPasswordRequestBody(
                    email: email,
                    code: context
                        .read<ForgetPasswordCubit>()
                        .codecontroller
                        .text,
                  ),
                );
              },
              // controll`er: ,
            ),
            SubmitCodeLisitner(email: email),
          ],
        ),
      ),
    );
  }
}
