import 'package:flutter/material.dart';
import 'package:nibras/core/routing/routes_name.dart'; 
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class CategoriesListWidget extends StatelessWidget {
  final List<String> categories;

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
          final categoryName = categories[index];

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
                categoryName,
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
  int categoryId = index + 1; 
  Navigator.pushNamed(
    context,
    RoutesName.results,
    arguments: {
      'categoryId': categoryId,
      'categoryName': categoryName,
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