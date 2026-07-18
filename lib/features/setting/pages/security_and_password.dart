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
import 'package:nibras/features/setting/widgets/forgetpassword/submit_password_listiner.dart';
import 'package:nibras/features/signup/signup.dart';

class SecurityAndPassword extends StatefulWidget {
  final String email;
  final String code;
  const SecurityAndPassword({
    super.key,
    required this.code,
    required this.email,
  });

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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.5),
          child: Divider(color: AppColors.avatarColor, height: 1.0),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Form(
          key: context.read<ForgetPasswordCubit>().formkey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0.h),
                child: Text(
                  "Create a new, strong password for your account.",
                  style: TextStyles.font14authblackbold,
                ),
              ),
              FormBody(
                controller: context.read<ForgetPasswordCubit>().passController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this feild can't be empty";
                  }
                  if (!AppRegex.hasMinLength(value)) {
                    return "must be 8 length at least";
                  }
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
                controller: context
                    .read<ForgetPasswordCubit>()
                    .passconfirmationcontroller,

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this feild can't be empty";
                  } else if (value !=
                      context.read<ForgetPasswordCubit>().passController.text) {
                    return "no matching with the password";
                  }
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
              SizedBox(height: 32.h),
              AppTextButton(
                onpressed: () {
                  if (!context
                      .read<ForgetPasswordCubit>()
                      .formkey
                      .currentState!
                      .validate()) {
                    return;
                  }
                  context.read<ForgetPasswordCubit>().emitSubmitPasswordState(
                    ForgetPasswordRequestBody(
                      email: widget.email,
                      code: widget.code,
                      password: context
                          .read<ForgetPasswordCubit>()
                          .passController
                          .text,
                      passwordconfirmation: context
                          .read<ForgetPasswordCubit>()
                          .passconfirmationcontroller
                          .text,
                    ),
                  );
                },
                textButton: "update Password",
                textStyle: TextStyles.font16homeblackbold,
              ),
              SubmitPasswordListiner(email: widget.email),
            ],
          ),
        ),
      ),
    );
  }
}
