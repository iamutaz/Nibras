import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class DurationFilterButtons extends StatelessWidget {
  final String selectedDuration; 
  final ValueChanged<String> onDurationChanged;

  const DurationFilterButtons({
    super.key,
    required this.selectedDuration,
    required this.onDurationChanged,
  });

  Widget _button(String label) {
    final bool isSelected = label == selectedDuration;

    return GestureDetector(
      onTap: () => onDurationChanged(label),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.mainBlue : AppColors.cardColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.mainBlue : AppColors.borderColor,
          ),
        ),
        child: Text(
          label,
          style: TextStyles.font14mainbluesemiBold.copyWith(
            color: isSelected ? Colors.white : AppColors.mainBlack,
            fontSize: 13.sp,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _button('This Week'),
        _button('This Month'),
        _button('All Time'),
      ],
    );
  }
}