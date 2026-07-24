import 'package:flutter/material.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class TopSearchesWidget extends StatelessWidget {
  final List<String> tags;

  const TopSearchesWidget({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: tags.map((tag) {
        return Material(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(16),
          clipBehavior: Clip.antiAlias, 
          child: InkWell(
            onTap: () {
            
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                tag,
                style: TextStyles.font14categoriesblackmedium.copyWith(
                  color: AppColors.lightgrey, 
                  fontWeight: FontWeight.w500, 
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}