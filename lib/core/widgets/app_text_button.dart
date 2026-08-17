import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback? onpressed;
  final String textButton;
  final TextStyle textStyle;
  final double? horizontalpadding,
      verticalpadding,
      hieghtbutton,
      widthbutton,
      raduisbutton,
      borderWidth;

  final Color? buttoncolor, borderColor;

  final Widget? icon;

  const AppTextButton({
    super.key,
    this.onpressed,
    required this.textButton,
    required this.textStyle,
    this.horizontalpadding,
    this.verticalpadding,
    this.hieghtbutton,
    this.widthbutton,
    this.raduisbutton,
    this.buttoncolor,
    this.borderWidth,
    this.borderColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(raduisbutton ?? 25),
            side: borderWidth != null && borderColor != null
                ? BorderSide(color: borderColor!, width: borderWidth!)
                : BorderSide.none,
          ),
        ),
        backgroundColor: WidgetStatePropertyAll<Color>(
          buttoncolor ?? AppColors.mainYellow,
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalpadding ?? 20.w,
            vertical: verticalpadding ?? 14.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(widthbutton ?? double.maxFinite, hieghtbutton ?? 52.h),
        ),
      ),
      onPressed: onpressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) icon!,
          if (icon != null) SizedBox(width: 10.w),
          Text(textButton, style: textStyle),
        ],
      ),
    );
  }
}
