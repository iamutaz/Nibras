

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class AppTextFormField extends StatelessWidget {
  String hintText;
  TextStyle? hintStyle;
  Widget? suffixIcon;
  InputBorder? enabledBorder;
  InputBorder? focusedBorder;
  InputBorder? errorBorder;
  bool? obscureText;
  TextEditingController? textEditingController;
  Function(String?) validator;
  Widget? prefixIcon;

  AppTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.enabledBorder,
    this.focusedBorder,
    this.hintStyle,
    this.obscureText,
    this.suffixIcon,
    this.textEditingController,
    required this.validator,
    this.errorBorder,
  });

  @override
  Widget build(BuildContext context) {
    
    return TextFormField(
      style: TextStyles.font14greysemiBold.copyWith(color: AppColors.darkgrey),
      controller: textEditingController,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.red),
        ),
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14hintcolorregular,
        suffixIcon: suffixIcon,
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: AppColors.borderColor,
                width: 1.w,
              ),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.lighterBlack, width: 1.w),
            ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.red),
        ),

        filled: true,
        fillColor: Colors.white,
      ),
      obscureText: obscureText ?? false,
      validator: (value) {
        return validator(value);
      },
    );
  }
}