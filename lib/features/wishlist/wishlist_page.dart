import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:flutter_screenutil/flutter_screenutil.dart';
=======
>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
<<<<<<< HEAD
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/core/widgets/app_text_form_feild.dart';
import 'package:nibras/features/gift/data/cubit/claim_gift_cubit.dart';
import 'package:nibras/features/gift/data/cubit/claim_gift_state.dart';
import 'package:nibras/features/gift/data/model/claim_gift_request_body.dart';
import 'package:nibras/features/wishlist/data/cubit/my_wishlist_cubit.dart';
import 'package:nibras/features/wishlist/data/cubit/my_wishlist_state.dart';
import 'package:nibras/features/wishlist/widgets/wishlist_course_body.dart';
=======
import 'package:nibras/features/wishlist/data/cubit/my_wishlist_cubit.dart';
import 'package:nibras/features/wishlist/data/cubit/my_wishlist_state.dart';
import 'package:nibras/features/wishlist/widgets/wishlist_course_body.dart';
// لا تنسَ تعمل import لملف الويدجت تبع الكورس اللي عملناه
// import 'package:nibras/path/to/course_card_widget.dart';
>>>>>>> 88de412774bc88364818669c92f2efafe4c444de

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

  void _showClaimGiftBottomSheet(BuildContext parentContext) {
    final TextEditingController codeController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    showModalBottomSheet(
      context: parentContext,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (modalContext) {
        return BlocProvider.value(
          value: parentContext.read<ClaimGiftCubit>(),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(modalContext).viewInsets.bottom + 20.h,
                top: 20.h,
                left: 20.w,
                right: 20.w,
              ),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 40.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "Claim Your Gift",
                      style: TextStyles.font16titleblackbold,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "Enter your gift code below to claim your course.",
                      style: TextStyle(color: Colors.grey[600], fontSize: 14.sp),
                    ),
                    SizedBox(height: 16.h),
                    AppTextFormField(
                      textEditingController: codeController,
                      hintText: "Enter Gift Code",
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Please enter a valid code";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.h),
                    BlocConsumer<ClaimGiftCubit, ClaimGiftState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          claimgiftsuccess: (data) {
                            // إغلاق الـ BottomSheet عند النجاح
                            Navigator.pop(modalContext);
            
                            // إظهار Dialog النجاح
                            showDialog(
                              context: parentContext,
                              builder: (dialogContext) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                title: const Row(
                                  children: [
                                    Icon(Icons.check_circle, color: Colors.green),
                                    SizedBox(width: 8),
                                    Text("Success"),
                                  ],
                                ),
                                content: const Text("Gift claimed successfully!"),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(dialogContext),
                                    child: const Text("OK"),
                                  ),
                                ],
                              ),
                            );
            
                            // تحديث القائمة
                            parentContext
                                .read<MyWishlistCubit>()
                                .emitGetMyWishlist();
                          },
                          claimgiftfailure: (error) {
                            // إغلاق الـ BottomSheet أولاً لتوضيح الرؤية
                            Navigator.pop(modalContext);
            
                            // إظهار Dialog الفشل بمنتصف الشاشة
                            showDialog(
                              context: parentContext,
                              builder: (dialogContext) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                title: const Row(
                                  children: [
                                    Icon(Icons.error_outline, color: Colors.red),
                                    SizedBox(width: 8),
                                    Text("Invalid Code"),
                                  ],
                                ),
                                content: Text(
                                  error.isNotEmpty
                                      ? error
                                      : "The gift code is invalid or has expired.",
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(dialogContext),
                                    child: const Text(
                                      "Try Again",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        final isLoading = state.maybeWhen(
                          claimgiftloading: () => true,
                          orElse: () => false,
                        );
            
                        return isLoading
                            ? const Center(child: CircularProgressIndicator())
                            : AppTextButton(
                                textButton: "Claim Gift",
                                textStyle:TextStyles.font16authblackbold,
                                onpressed: () {
                                  if (formKey.currentState!.validate()) {
                                    context.read<ClaimGiftCubit>().claimGift(
                                      ClaimGiftRequestBody(
                                        code: codeController.text.trim(),
                                      ),
                                    );
                                  }
                                },
                              );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => context.pop(),
<<<<<<< HEAD
          child: const Icon(
            Icons.arrow_back_ios,
            size: 14,
            color: Colors.black,
          ),
=======

          child: Icon(Icons.arrow_back_ios, size: 14, color: Colors.black),
>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
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
<<<<<<< HEAD
=======

>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
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

                  return InkWell(
                    onTap: () => context.pushNamed(
                      RoutesName.details,
                      aurgment: course.id,
                    ),
                    child: WishlistCourseBody(
                      title: course.title ?? 'No Title',
                      thumbnailUrl: course.thumbnail,
                      price: (course.price ?? 0).toDouble(),
                      isFree: course.isFree ?? false,
                      averageRating: (course.averageRating ?? 0).toDouble(),
                      reviewsCount: course.reviewsCount ?? 0,
                      instructorName: course.instructor?.name ?? 'Unknown',
                    ),
                  );
                },
              );
            },
<<<<<<< HEAD
=======

>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
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
<<<<<<< HEAD
=======

>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
<<<<<<< HEAD
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: SafeArea(
          child: AppTextButton(
            textButton: "Have a Gift Code?",
            textStyle: TextStyles.font16authblackbold,
            onpressed: () => _showClaimGiftBottomSheet(context),
          ),
        ),
      ),
=======
>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
    );
  }
}
