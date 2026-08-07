import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/interesting/data/cubit/categories_cubit.dart';
import 'package:nibras/features/interesting/data/cubit/categories_state.dart';
import 'package:nibras/features/interesting/data/repo/categories_repo.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/top_searches_widget.dart';
import 'widgets/categories_list_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> topSearches = [
      'Python',
      'excel',
      'Java',
      'C#',
      'Ai',
      'SQL',
      'ASP.net',
      'Java Script',
      'AWS',
      'React',
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
              BlocProvider(
                create: (_) =>
                    CategoriesCubit(CategoriesRepo())..getCategories(),
                child: BlocBuilder<CategoriesCubit, CategoriesState>(
                  builder: (context, state) {
                    if (state is CategoriesLoading ||
                        state is CategoriesInitial) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }

                    if (state is CategoriesFailure) {
                      return Center(child: Text(state.error));
                    }

                    if (state is CategoriesSuccess) {
                      return CategoriesListWidget(categories: state.categories);
                    }

                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
