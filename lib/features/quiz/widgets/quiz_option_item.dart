import 'package:flutter/material.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';

class QuizOptionItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const QuizOptionItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.mainBlue.withOpacity(0.05)
              : Colors.transparent,
          border: Border.all(
            color: isSelected ? AppColors.mainBlue : Colors.grey.shade300,
            width: isSelected ? 1.5 : 1.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: isSelected ? AppColors.mainBlue : Colors.grey.shade400,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: isSelected ? Colors.purple : Colors.black87,
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
