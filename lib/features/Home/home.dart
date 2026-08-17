import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/course_card.dart';
import 'package:nibras/features/Home/data/cubit/home_cubit.dart';
import 'package:nibras/features/Home/data/cubit/home_state.dart';
import 'package:nibras/features/Home/data/cubit/recommended_cubit.dart';
import 'package:nibras/features/Home/data/cubit/recommended_state.dart';
import 'package:nibras/features/Home/data/model/body_course.dart';
import 'package:nibras/features/Home/widgets/profile_row.dart';
import 'package:nibras/features/setting/data/cubits/profile_cubit.dart';
import 'package:nibras/features/setting/data/cubits/profile_state.dart';
import 'package:nibras/features/setting/data/repos/profile_repo.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    context.read<HomeCubit>().emitAllCoursesState();
    context.read<RecommendedCubit>().emitRecommendedCoursesState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              BlocProvider(
                create: (_) => ProfileCubit(ProfileRepo())..getMe(),
                child: BlocBuilder<ProfileCubit, ProfileState>(
                  builder: (context, state) {
                    if (state is ProfileSuccess) {
                      return ProfileRow(
                        username: state.user.name,
                        avatarUrl: state.user.avatar,
                      );
                    }
                    return const ProfileRow(username: '');
                  },
                ),
              ),
              Divider(color: AppColors.avatarColor, thickness: 1),

              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Cources",
                      style: TextStyles.font16homeblackbold,
                    ),
                    Text("See all", style: TextStyles.font12mainbluesemiBold),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 312.h,
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (BuildContext context, state) {
                    return state.when(
                      initial: () => const SizedBox.shrink(),
                      homeloading: () =>
                          const Center(child: CircularProgressIndicator()),
                      homesuccess: (data) {
                        List<BodyCourse> allcourses = data.data;
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: allcourses.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: InkWell(
                                onTap: () => context.pushNamed(
                                  RoutesName.details,
                                  aurgment: allcourses[index].id,
                                ),
                                child: CourseCard(
                                  width: 290.h,
                                  height: 312.w,
                                  courseTitle: allcourses[index].title,
                                  courseSource:
                                      allcourses[index].instructor.name,
                                  rate: allcourses[index].rate,
                                  logo: "assets/svg/frame.svg",
                                  numberOfReviews: allcourses[index].reviews,
                                  discountedPrice: 9,
                                  realPrice: allcourses[index].price,
                                ),
                              ),
                            );
                          }),
                        );
                      },
                      homefailure: (exception) =>
                          Center(child: Text(exception.toString())),
                    );
                  },
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0.w,
                  vertical: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Cources Build in Your Intrestes",
                      style: TextStyles.font16homeblackbold,
                    ),
                    Text("See all", style: TextStyles.font12mainbluesemiBold),
                  ],
                ),
              ),
              SizedBox(
                height: 312.h,
                child: BlocBuilder<RecommendedCubit, RecommendedState>(
                  builder: (BuildContext context, state) {
                    return state.when(
                      initial: () => const SizedBox.shrink(),
                      recommendedloading: () =>
                          const Center(child: CircularProgressIndicator()),
                      recommendedsuccess: (data) {
                        List<BodyCourse> allcourses = data.data;
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: allcourses.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: InkWell(
                                onTap: () => context.pushNamed(
                                  RoutesName.details,
                                  aurgment: allcourses[index].id,
                                ),
                                child: CourseCard(
                                  width: 290.h,
                                  height: 312.w,
                                  courseTitle: allcourses[index].title,
                                  courseSource:
                                      allcourses[index].instructor.name,
                                  rate: allcourses[index].rate,
                                  logo: "assets/svg/frame.svg",
                                  numberOfReviews: allcourses[index].reviews,
                                  discountedPrice: 9,
                                  realPrice: allcourses[index].price,
                                ),
                              ),
                            );
                          }),
                        );
                      },
                      recommendedfailure: (error) => Center(child: Text(error)),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}