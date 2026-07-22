import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class RatingFilterWidget extends StatelessWidget {
  final int? selectedRating;
  final ValueChanged<int?> onRatingChanged;

  const RatingFilterWidget({
    super.key,
    required this.selectedRating,
    required this.onRatingChanged,
  });

  @override
  Widget build(BuildContext context) {
    final List<int> starOptions = [5, 4, 3, 2, 1];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rating',
          style: TextStyles.font16homeblackbold.copyWith(fontSize: 20),
        ),
        const SizedBox(height: 18),
        Column(
          children: starOptions.map((starCount) {
            bool isSelected = selectedRating == starCount;

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Row(
                children: [
                  Theme(
                    data: ThemeData(unselectedWidgetColor: AppColors.grey),
                    child: Checkbox(
                      value: isSelected,
                      activeColor: AppColors.mainBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                        vertical: -4,
                      ),
                      onChanged: (val) =>
                          onRatingChanged(val == true ? starCount : null),
                    ),
                  ),

                  const SizedBox(width: 6),

                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        size: 20.w,
                        color: index < starCount
                            ? AppColors.orange
                            : AppColors.borderColor,
                      );
                    }),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}