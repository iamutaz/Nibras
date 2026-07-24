import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/top_searches_widget.dart';
import 'widgets/categories_list_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> topSearches = [
      'Python', 'excel', 'Java', 'C#', 'Ai',
      'SQL', 'ASP.net', 'Java Script', 'AWS', 'React',
    ];

    final List<String> categories = [
      'UX Design',
      'Financial',
      'Data Scientist',
      'Cloud Engineer',
      'Game Developer',
      'Photography',
      'Amazon AWS',
      'Machine Learning',
      'Business Analysis',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBarWidget(), 
              const SizedBox(height: 32),

              Text(
                'Top Searches',
                style: TextStyles.font20blackbold.copyWith(
                  fontSize: 18.sp,
                  color: AppColors.mainBlack,
                ),
              ),
              const SizedBox(height: 16),
              TopSearchesWidget(tags: topSearches),
              const SizedBox(height: 32),
              
              Text(
                'Browse Categories',
                style: TextStyles.font20blackbold.copyWith(
                  fontSize: 18.sp, 
                  color: AppColors.mainBlack,
                ),
              ),
              const SizedBox(height: 3),
              CategoriesListWidget(categories: categories),
            ],
          ),
        ),
      ),
    );
  }
}