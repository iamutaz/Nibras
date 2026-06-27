import 'package:flutter/material.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class BottomActions extends StatelessWidget {
  const BottomActions({
    super.key,
    required this.buttonText,
    required this.isEnabled,
    required this.onSkip,
    required this.onPressed,
  });

  final String buttonText;
  final bool isEnabled;
  final VoidCallback onSkip;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: onSkip,
            child: Text(
              'Skip',
              style: TextStyles.font16authblacksemibold.copyWith(
                fontSize: 18,
            
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(width: 22),
        Expanded(
          flex: 2,
          child: SizedBox(
            height: 58,
            child: ElevatedButton(
              onPressed: isEnabled ? onPressed : null,
              style: ElevatedButton.styleFrom(
                elevation: 0,

                backgroundColor: AppColors.mainYellow,

                disabledBackgroundColor: const Color.fromARGB(255, 244, 255, 193),

                foregroundColor: AppColors.authblack,

                disabledForegroundColor: const Color(0xff9A9A9A),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                buttonText,
                style: TextStyles.font16authblacksemibold.copyWith(
                  fontSize: 18,

                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}