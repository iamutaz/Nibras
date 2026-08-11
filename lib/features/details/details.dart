import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibras/core/DI/injection.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/details/data/cubit/course_by_id_cubit.dart';
import 'package:nibras/features/details/data/cubit/course_by_id_state.dart';
import 'package:nibras/features/details/data/cubit/enrollment_course_cubit.dart';
import 'package:nibras/features/details/data/models/course_details_request_body.dart';
import 'package:nibras/features/details/widget/buy_field.dart';
import 'package:nibras/features/details/widget/details_title.dart';
import 'package:nibras/features/details/widget/instructor_container.dart';
import 'package:nibras/features/details/widget/lessons_section.dart';
import 'package:nibras/features/details/widget/meta_area.dart';
import 'package:nibras/features/details/widget/reviews_section.dart';
import 'package:nibras/features/details/widget/what_you_will_learn.dart';
import 'package:nibras/features/wishlist/data/cubit/add_to_wishlist_cubit.dart';

class Details extends StatefulWidget {
  final int id;
  const Details({super.key, required this.id});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  void initState() {
    super.initState();
    context.read<CourseByIdCubit>().emitCourseById(
      CourseDetailsRequestBody(id: widget.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => context.pop(),
          child: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
        actions: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: SvgPicture.asset("assets/svg/cart.svg"),
            ),
          ),
        ],
        title: Text("Course Page", style: TextStyles.font16homeblackbold),
        centerTitle: true,
      ),
      body: BlocBuilder<CourseByIdCubit, CourseByIdState>(
        builder: (context, state) {
          final course = context.read<CourseByIdCubit>().course;

          if (state is CourseByIdLoading && course == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  DetailsTitle(
                    avgrate: course?.averageRating?.toString() ?? '4.5',
                    coursedescription:
                        course?.description ??
                        'Advance Your Career in UX/UI with Figma.Master responsive design, prototyping, and developer-ready UI systems in Figma.',
                    coursetitle:
                        course?.title ??
                        'Figma UI UX Design Essential Training',
                    instructorname:
                        course?.instructor.name ?? 'Daniel Walter Scott',
                    reviewscount: course?.reviewsCount ?? 314,
                    totalenrollment:
                        course?.totalEnrollments?.toString() ?? '31427',
                    thumbnail: course?.thumbnail ?? 'assets/images/IBM.png',
                  ),
                  MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) => getIt<EnrollmentCourseCubit>(),
                      ),
                      BlocProvider(
                        create: (context) => getIt<AddToWishlistCubit>(),
                      ),
                    ],
                    child: BuyField(
                      courseId: course?.id ?? 1,
                      discountedprice: course != null
                          ? course.price.toString()
                          : '9.99',
                      originalprice: course != null
                          ? course.price.toString()
                          : '14.99',
                      isFree: course?.isFree ?? false,
                    ),
                  ),
                  MetaArea(),
                  WhatYouWillLearn(learnings: course!.whatYouLearn),
                  SizedBox(height: 24.h),
                  LessonsSection(sections: course.sections),
                  SizedBox(height: 24.h),

                  InstructorContainer(instructor: course.instructor),
                  SizedBox(height: 24.h),

                  ReviewsSection(id: course.id),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
