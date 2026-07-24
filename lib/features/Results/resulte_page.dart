import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/Results/data/cubit/results_cubit.dart';
import 'package:nibras/features/Results/data/cubit/results_state.dart';
import 'package:nibras/features/Results/data/repo/results_repo.dart';
import 'package:nibras/features/filter/data/model/filter_params.dart';
import 'widgets/courses_list_widget.dart';

class ResultsPage extends StatelessWidget {
  final int categoryId;
  final String categoryName;

  const ResultsPage({
    super.key,
    required this.categoryId,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ResultsCubit(ResultsRepo())..getFilteredCourses(categoryId),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: AppBar(
              backgroundColor: AppColors.white,
              elevation: 0,
              scrolledUnderElevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: AppColors.mainBlack, size: 20),
                onPressed: () => Navigator.pop(context),
              ),
              title: Text(
                categoryName,
                style: TextStyles.font20blackbold.copyWith(fontSize: 18.sp),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/svg/filter.svg',
                    colorFilter: const ColorFilter.mode(AppColors.mainBlack, BlendMode.srcIn),
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () async {
              
                    final result = await Navigator.pushNamed(context, RoutesName.filter);

                    if (result is FilterParams) {
                      context.read<ResultsCubit>().applyFilters(result);
                    }
                  },
                ),
              ],
            ),
            body: SafeArea(
              child: BlocBuilder<ResultsCubit, ResultsState>(
                builder: (context, state) {
                  if (state is ResultsLoading || state is ResultsInitial) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state is ResultsFailure) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Text(
                          state.error,
                          textAlign: TextAlign.center,
                          style: TextStyles.font14mainbluesemiBold,
                        ),
                      ),
                    );
                  }

                  if (state is ResultsSuccess) {
                    if (state.courses.isEmpty) {
                      return const Center(child: Text('there is no courses to display'));
                    }
                    return SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Column(
                        children: [
                          CoursesListWidget(courses: state.courses),
                        ],
                      ),
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}