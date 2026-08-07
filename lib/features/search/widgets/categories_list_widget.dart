import 'package:flutter/material.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/interesting/data/model/categories_response_body.dart';

class CategoriesListWidget extends StatelessWidget {
  final List<CategoryResponseBody> categories; 

  const CategoriesListWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];

          return Card(
            color: AppColors.cardColor,
            elevation: 0,
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              title: Text(
                category.name,
                style: TextStyles.font16lighterblacksemiBold.copyWith(
                  color: AppColors.lightgrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: AppColors.lightgrey,
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesName.results,
                  arguments: {
                    'categoryId': category.id,
                    'categoryName': category.name,
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}