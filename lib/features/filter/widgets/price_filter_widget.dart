import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class PriceFilterWidget extends StatelessWidget {
  final String? selectedPrice;
  final ValueChanged<String?> onPriceChanged;

  const PriceFilterWidget({
    super.key,
    required this.selectedPrice,
    required this.onPriceChanged,
  });

  @override
  Widget build(BuildContext context) {
    final options = {'free': 'Free', 'paid': 'Paid'};
    return Column(
      children: [
        Center(
          child: Text(
            'Price',
            style: TextStyles.font16homeblackbold.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: options.entries.map((entry) {
            final value = entry.key;
            final label = entry.value;
            final isSelected = selectedPrice == value;

            return GestureDetector(
              onTap: () => onPriceChanged(isSelected ? null : value),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.mainBlue : AppColors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: isSelected ? AppColors.mainBlue : AppColors.darkgrey,
                    width: 1.5,
                  ),
                ),
                child: Text(
                  label,
                  style: TextStyles.font14mainbluesemiBold.copyWith(
                    color: isSelected ? AppColors.white : AppColors.mainBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
