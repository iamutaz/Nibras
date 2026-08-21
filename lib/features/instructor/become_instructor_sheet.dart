import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/instructor/cubit/become_instructor_cubit.dart';
import 'package:nibras/features/instructor/cubit/become_instructor_state.dart';
import 'package:nibras/features/instructor/model/become_instructor_request_body.dart';
import 'package:nibras/core/networking/api_error_handler.dart'; // عشان ميثود setupErrorState

class BecomeInstructorBottomSheet extends StatefulWidget {
  const BecomeInstructorBottomSheet({super.key});

  @override
  State<BecomeInstructorBottomSheet> createState() =>
      _BecomeInstructorBottomSheetState();
}

class _BecomeInstructorBottomSheetState
    extends State<BecomeInstructorBottomSheet> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16.w,
        right: 16.w,
        top: 24.h,
      ),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Become an Instructor",
                  style: TextStyles.font16homeblackbold,
                ),
                SizedBox(height: 24.h),
                TextFormField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Title is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.h),
                TextFormField(
                  controller: _bioController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: 'Bio',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Bio is required';
                    }
                    // حماية محلية قبل ما نبعت للسيرفر
                    if (value.trim().length < 50) {
                      return 'The bio field must be at least 50 characters.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.h),
                Center(
                  child: Text(
                    "Our Team Will See Your Request",
                    style: TextStyles.font14authblackbold,
                  ),
                ),
                SizedBox(height: 30.h),
            
                BlocConsumer<BecomeInstructorCubit, BecomeInstructorState>(
                  listenWhen: (previous, current) =>
                      current is BecomeInstructorStateLoading ||
                      current is BecomeInstructorStateSuccess ||
                      current is BecomeInstructorStateFailure,
                  listener: (context, state) {
                    state.whenOrNull(
                      becomeinstructorloading: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        );
                      },
                      becomeinstructorsuccess: (data) {
                        context.pop(); // لتسكير ديالوج التحميل
                        context.pop(); // لتسكير البوتوم شيت نفسه
            
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Request sent successfully!"),
                            backgroundColor: Colors.green,
                          ),
                        );
                      },
                      becomeinstructorfailure: (error) {
                        // ميثود setupErrorState تبعك لحالها بتعمل context.pop() لتسكير
                        // ديالوج التحميل وبعدين بتعرض الـ AlertDialog تبع الخطأ
                        setupErrorState(context, error);
                      },
                    );
                  },
                  builder: (context, state) {
                    return AppTextButton(
                      onpressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<BecomeInstructorCubit>().becomeInstructor(
                            BecomeInstructorRequestBody(
                              title: _titleController.text,
                              bio: _bioController.text,
                            ),
                          );
                        }
                      },
                      textButton: "Submit",
                      textStyle: TextStyles.font16whitebold,
                      raduisbutton: 12.r,
                      buttoncolor: Colors.blue,
                    );
                  },
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
