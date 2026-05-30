import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/app_regex.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/login/data/cubit/login_cubit.dart';
import 'package:nibras/features/login/data/model/login_request_body.dart';
import 'package:nibras/features/login/widget/login_bloc_listner.dart';
import 'package:nibras/features/login/widget/welcom_back_stack.dart';
import 'package:nibras/features/signup/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool? heckedvalue = false;
  bool isobscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
      key: context.read<LoginCubit>().formkey,
          child: Column(
            children: [
              WelcomBackStack(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 32),
                    Text(
                      "Log in to continue your progress and complete your lessons",
                      style: TextStyles.font16authblacksemibold,
                    ),
                    FormBody(
                      hint: 'admin@alufuq.com',
                      prefixpath: 'assets/svg/email.svg',
                      title: "Email Address",
                      controller: context.read<LoginCubit>().emailcontroller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "this feild can't be empty";
                        }
                        if (!AppRegex.isEmailValid(value)) {
                          return "invalid email format";
                        }
                      },
                    ),
                    FormBody(
                      hint: '••••••••••••••••••••••••••••••••',
                      prefixpath: 'assets/svg/lock.svg',
                      isobscure: isobscuretext,
                      title: "Password",
                      controller: context.read<LoginCubit>().passController,
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
                            color: isobscuretext
                                ? AppColors.authblack
                                : Colors.blue,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "this feild can't be empty";
                        }
                        if (!AppRegex.hasMinLength(value)) {
                          return "must be 8 length at least";
                        }
                      },
                    ),
                    Text(
                      "Forgot Password?",
                      style: TextStyles.font12authblackbold,
                    ),
                    SizedBox(height: 10.h),
                    loginCheckBox(),
                    SizedBox(height: 32.h),
                    AppTextButton(
                      onpressed: () async {
                        if (!context
                            .read<LoginCubit>()
                            .formkey
                            .currentState!
                            .validate()) {
                          return;
                        }
                        context.read<LoginCubit>().emitLoginState(
                          LoginRequestBody(
                            email: context
                                .read<LoginCubit>()
                                .emailcontroller
                                .text,
                            password: context
                                .read<LoginCubit>()
                                .passController
                                .text,
                          ),
                        );
                      },
                      textButton: "Log In",
                      textStyle: TextStyles.font16authblacksemibold,
                    ),
                  ],
                ),
              ),
              LoginBlocListner(),
            ],
          ),
        ),
      ),
    );
  }

  Row loginCheckBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 20.w,
          child: Checkbox(
            value: heckedvalue,
            onChanged: (newValue) {
              setState(() {
                heckedvalue = newValue;
              });
            },

            activeColor: AppColors.authblack,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
          ),
        ),
        SizedBox(width: 8.w),
        Text("Remember me", style: TextStyles.font12authblackbold),
      ],
    );
  }
}
