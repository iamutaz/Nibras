import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final bool? obscureText;
  final TextEditingController? textEditingController;
  final Function(String?) validator;
  final Widget? prefixIcon;

  final int? minLines;
  final int? maxLines;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;

  const AppTextFormField({
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
    this.minLines,
    this.maxLines = 1,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.font14greysemiBold.copyWith(color: AppColors.darkgrey),
      controller: textEditingController,

      minLines: minLines,
      maxLines: maxLines,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,

      decoration: InputDecoration(
        prefixIcon: prefixIcon,

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red),
        ),

        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14hintcolorregular,
        suffixIcon: suffixIcon,

        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.borderColor, width: 1.w),
            ),

        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.lighterBlack, width: 1.w),
            ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red),
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