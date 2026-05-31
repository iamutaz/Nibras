import 'package:flutter/material.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';

class ChoiceTile extends StatelessWidget {
  const ChoiceTile({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected ? AppColors.mainYellow : const Color(0xffF9FAFB),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 52,
          
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight:
                  isSelected ? FontWeight.w600 : FontWeight.w500,
               color: isSelected
    ? AppColors.authblack
    : const Color(0xff504D5D),
            ),
          ),
        ),
      ),
    );
  }
}