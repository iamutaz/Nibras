
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String textButton;
  final TextStyle textStyle;
  final double? horizontalpadding,
      verticalpadding,
      hieghtbutton,
      widthbutton,
      raduisbutton,
      borderWidth;
  Color? buttoncolor, borderColor;
  String? icon;

  AppTextButton({
    super.key,
    required this.onpressed,
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
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(raduisbutton ?? 25),
            side: borderWidth != null && borderColor != null
                ? BorderSide(
              color: borderColor!,
              width: borderWidth!,
            )
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
      child: Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            if (icon != null) SvgPicture.asset(icon!, width: 22.w, height: 22.h),
            SizedBox(width: icon != null ? 10.w : 0.w,),
            Text(textButton, style: textStyle),
          ],
        ),
      ),
    );
  }
}