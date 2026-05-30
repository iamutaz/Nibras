import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/core/widgets/app_text_form_feild.dart';
import 'package:nibras/features/signup/widgets/create_account_stack.dart'
    show CreateAccountStack;

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isobscuretext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                  Form(
                    child: Column(
                      children: [
                        FormBody(
                          controller: TextEditingController(),
                          validator: (value) {},
                          title: "Full Name",
                          hint: "Aizen Souske",
                          prefixpath: "assets/svg/profile_vector.svg",
                        ),
                        FormBody(
                          controller: TextEditingController(),
                          validator: (value) {},
                          title: "Email Address",
                          hint: "admin@alufuq.com",
                          prefixpath: "assets/svg/email.svg",
                        ),
                        Align(
                          alignment: AlignmentGeometry.bottomLeft,
                          child: Text(
                            "Phone Number",
                            style: TextStyles.font12darkgreymiduem,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 92.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: AppColors.borderColor,
                                  width: 1.w,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/syira_flag.png",
                                    width: 26.w,
                                    height: 18.h,
                                  ),
                                  SvgPicture.asset('assets/svg/arrow_down.svg'),
                                ],
                              ),
                            ),
                            SizedBox(width: 20.w),
                            Expanded(
                              child: AppTextFormField(
                                hintText: "09*****",
                                validator: (value) {},
                                prefixIcon: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 14.0.h,
                                    horizontal: 14.0.w,
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/svg/phone.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        FormBody(
                          controller: TextEditingController(),
                          validator: (value) {},
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
                        SizedBox(height: 32.h),
                        AppTextButton(
                          onpressed: () {
                            context.pushNamed(RoutesName.interesting);
                          },
                          textButton: "Sign Up",
                          textStyle: TextStyles.font16authblacksemibold,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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
