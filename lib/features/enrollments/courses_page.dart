import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/enrollments/data/cubit/enrollments_cubit.dart';
import 'package:nibras/features/enrollments/data/cubit/enrollments_state.dart';
import 'package:nibras/features/enrollments/data/model/enrollments_response_body.dart';
import 'package:nibras/features/enrollments/widgets/enrollment_course_body.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<EnrollmentsCubit>().emitAllCoursesState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: InkWell(
          onTap: () => context.pop(),

          child: Icon(Icons.arrow_back_ios, size: 14, color: Colors.black),
        ),

        title: Text("My courses", style: TextStyles.font16titleblackbold),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.5),
          child: Divider(color: AppColors.avatarColor, height: 1.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<EnrollmentsCubit, EnrollmentsState>(
              builder: (context, state) {
                return state.when(
                  enrollmentsinitial: () {
                  return  SizedBox.shrink();
                  },
                  enrollmentsinitialloading: () {
                   return CircularProgressIndicator();
                  },
                  enrollmentsinitialsuccess: (data) {
                    List <EnrollmentModel> enrollments=data.data;
                    return EnrollmentCourseBody(enrollments: enrollments);
                  }, enrollmentsinitialfailure: (String error) { 
                    return Text(error);
                   },
                  
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
