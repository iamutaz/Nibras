import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibras/core/helpers/app_regex.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/core/widgets/app_text_form_feild.dart';
import 'package:nibras/features/signup/data/cubit/signup_cubit.dart';
import 'package:nibras/features/signup/data/model/signup_request_body.dart';
import 'package:nibras/features/signup/widgets/create_account_stack.dart'
    show CreateAccountStack;
import 'package:nibras/features/signup/widgets/signup_bloc_listner.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isobscuretext = true;
  bool isobscurepassconfitext = true;
  TextEditingController passcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    passcontroller = context.read<SignupCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: context.read<SignupCubit>().formkey,
          child: Column(
            children: [
              CreateAccountStack(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 32.h),
                child: Column(
                  children: [
                    Text(
                      "Join Nibras and start your joyful learning journey",
                      style: TextStyles.font16authblacksemibold,
                    ),
                    Column(
                      children: [
                        FormBody(
                          controller: context
                              .read<SignupCubit>()
                              .nameController,
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
                          controller: context
                              .read<SignupCubit>()
                              .emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "this feild can't be empty";
                            }
                            if (!AppRegex.isEmailValid(value)) {
                              return "invalid email format";
                            }
                          },
                          title: "Email Address",
                          hint: "admin@alufuq.com",
                          prefixpath: "assets/svg/email.svg",
                        ),
                        FormBody(
                          controller: context
                              .read<SignupCubit>()
                              .passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "this feild can't be empty";
                            }
                            if (!AppRegex.hasMinLength(value)) {
                              return "must be 8 length at least";
                            }
                          },
                          title: "Password",
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
                                color: isobscuretext
                                    ? AppColors.authblack
                                    : Colors.blue,
                              ),
                            ),
                          ),
                        ),
                        FormBody(
                          controller: context
                              .read<SignupCubit>()
                              .confirmPasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "this feild can't be empty";
                            } else if (value != passcontroller.text) {
                              return "no matching with the password";
                            }
                          },
                          title: "Confirm Password",
                          hint: "••••••••••••••••••••••••••••••••",
                          prefixpath: "assets/svg/lock.svg",
                          isobscure: isobscurepassconfitext,
                          suffix: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isobscurepassconfitext =
                                      !isobscurepassconfitext;
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
                                .read<SignupCubit>()
                                .formkey
                                .currentState!
                                .validate()) {
                              return;
                            }
                            context.read<SignupCubit>().emitSignupState(
                              SignupRequestBody(
                                name: context
                                    .read<SignupCubit>()
                                    .nameController
                                    .text,
                                email: context
                                    .read<SignupCubit>()
                                    .emailController
                                    .text,
                                password: context
                                    .read<SignupCubit>()
                                    .passwordController
                                    .text,
                                passwordconfirmation:
                                    context.read<SignupCubit>().confirmPasswordController.text,
                              ),
                              
                            );
                          },
                          textButton: "Sign Up",
                          textStyle: TextStyles.font16authblacksemibold,
                        ),
                        SignupBlocListner()
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FormBody extends StatelessWidget {
  String? title;
  String hint;
  String prefixpath;
  bool? isobscure;
  Function(String?) validator;

  TextEditingController? controller;

  Widget? suffix;
  FormBody({
    super.key,
    this.title,
    this.isobscure,
    this.suffix,
    required this.hint,
    required this.prefixpath,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title ?? "", style: TextStyles.font12darkgreymiduem),
          SizedBox(height: 8.h),
          AppTextFormField(
            textEditingController: controller,
            obscureText: isobscure,
            hintText: hint,
            validator: validator,
            suffixIcon: suffix,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 14.0.h,
                horizontal: 14.0.w,
              ),
              child: SvgPicture.asset(prefixpath),
            ),
          ),
        ],
      ),
    );
  }
}
