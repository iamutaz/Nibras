import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/features/details/data/cubit/enrollment_course_cubit.dart';
import 'package:nibras/features/details/data/cubit/enrollment_course_state.dart';

class EnrollmentBlocListener extends StatelessWidget {
  const EnrollmentBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EnrollmentCourseCubit, EnrollmentCourseState>(
      listenWhen: (previous, current) =>
          current is EnrollmentCourseLoading ||
          current is EnrollmentCourseSuccess ||
          current is EnrollmentCourseFailure,
      listener: (context, state) {
        state.whenOrNull(
          enrollmentcourseloading: () {
            showDialog(
              context: context,
              barrierDismissible: false, // يمنع إغلاق التحميل عند الضغط خارجه
              builder: (BuildContext context) {
                return const Center(child: CircularProgressIndicator());
              },
            );
          },
          enrollmentcoursesuccess: (data) {
            context.pop(); // إغلاق دائرة التحميل

            // إظهار رسالة النجاح
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Success"),
                  content: const Text("Enrollment successfully!"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.pop(); // إغلاق الـ Alert
                      },
                      child: const Text("OK"),
                    ),
                  ],
                );
              },
            );
          },
          enrollmentcoursetailure: (error) {
            context.pop(); // إغلاق دائرة التحميل
            setupErrorState(context, error); // إظهار رسالة الخطأ
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
