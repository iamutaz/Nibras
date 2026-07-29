import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/wishlist/data/cubit/my_wishlist_cubit.dart';
import 'package:nibras/features/wishlist/data/cubit/my_wishlist_state.dart';
import 'package:nibras/features/wishlist/widgets/wishlist_course_body.dart';
// لا تنسَ تعمل import لملف الويدجت تبع الكورس اللي عملناه
// import 'package:nibras/path/to/course_card_widget.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  void initState() {
    super.initState();
    context.read<MyWishlistCubit>().emitGetMyWishlist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => context.pop(),

          child: Icon(Icons.arrow_back_ios, size: 14, color: Colors.black),
        ),
        title: Text("Wishlist", style: TextStyles.font16titleblackbold),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.5),
          child: Divider(color: AppColors.avatarColor, height: 1.0),
        ),
      ),
      body: BlocBuilder<MyWishlistCubit, MyWishlistState>(
        builder: (context, state) {
          return state.maybeWhen(
            getmywishlistloading: () {
              return const Center(child: CircularProgressIndicator());
            },

            getmywishlistsuccess: (response) {
              final courses = response.data;

              if (courses == null || courses.isEmpty) {
                return const Center(
                  child: Text(
                    "Your wishlist is empty.",
                    style: TextStyle(fontSize: 16),
                  ),
                );
              }

              return ListView.separated(
                itemCount: courses.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    color: AppColors.borderColor,
                    thickness: 1,
                    height: 1,
                  );
                },
                itemBuilder: (context, index) {
                  final course = courses[index];

                  return WishlistCourseBody(
                    title: course.title ?? 'No Title',
                    thumbnailUrl: course.thumbnail,
                    price: (course.price ?? 0).toDouble(),
                    isFree: course.isFree ?? false,
                    averageRating: (course.averageRating ?? 0).toDouble(),
                    reviewsCount: course.reviewsCount ?? 0,
                    instructorName: course.instructor?.name ?? 'Unknown',
                  );
                },
              );
            },

            getmywishlistfailure: (error) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    error,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ),
              );
            },

            orElse: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
