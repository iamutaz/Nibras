import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class SortByWidget extends StatelessWidget {
  final String? selectedSort;
  final ValueChanged<String?> onSortChanged;

  const SortByWidget({
    super.key,
    required this.selectedSort,
    required this.onSortChanged,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> options = ['Newest', 'Popular', 'Top rate'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sort by',
          style: TextStyles.font16homeblackbold.copyWith(fontSize: 18.sp),
        ),
        const SizedBox(height: 17),
        Column(
          children: options.map((option) {
            bool isSelected = selectedSort == option;

            return ListTile(
              title: Text(
                option,
                style: TextStyles.font14mainbluesemiBold.copyWith(
                  color: AppColors.mainBlack,
                  fontWeight: FontWeight.normal,
                ),
              ),
              leading: Container(
                width: 18.w,
                height: 18.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected
                        ? AppColors.mainBlue
                        : AppColors.grey,
                    width: 2,
                  ),
                ),
                child: isSelected
                    ? Center(
                        child: Container(
                          width: 8.w,
                          height: 8.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.mainBlue,
                          ),
                        ),
                      )
                    : null,
              ),
              contentPadding: EdgeInsets.zero,
              dense: true,
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              onTap: () {
                if (isSelected) {
                  onSortChanged(null);
                } else {
                  onSortChanged(option);
                }
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
