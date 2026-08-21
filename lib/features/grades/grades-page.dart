import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'data/cubit/grades_cubit.dart';
import 'data/cubit/grades_state.dart';
import 'data/repo/grades_repo.dart';
import 'widgets/grades_summary_header.dart';
import 'widgets/quiz_result_card.dart';

class GradesPage extends StatelessWidget {
  final int courseId;

  const GradesPage({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GradesCubit(GradesRepo())..getQuizResults(courseId),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false, 
          titleSpacing: 16.w,
          title: Text(
            'Record Your Grades',
            style: TextStyles.font20blackbold.copyWith(fontSize: 18.sp),
          ),
          centerTitle: false, 
        ),
        body: SafeArea(
          child: BlocBuilder<GradesCubit, GradesState>(
            builder: (context, state) {
              if (state is GradesLoading || state is GradesInitial) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state is GradesFailure) {
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

              if (state is GradesSuccess) {
                final data = state.data;

                return SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GradesSummaryHeader(
                        courseTitle: data.courseTitle,
                        passingScore: data.passingScore,
                      ),
                      SizedBox(height: 20.h),
                      ...data.quizzes.map(
                        (quiz) =>
                            QuizResultCard(quiz: quiz, onActionTap: () {}),
                      ),
                    ],
                  ),
                );
              }

              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
