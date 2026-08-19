import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class AddReviewBottomSheet extends StatefulWidget {
  final Function(int rating, String comment)? onSubmit;

  const AddReviewBottomSheet({super.key, this.onSubmit});

  static Future<void> show(
    BuildContext context, {
    Function(int rating, String comment)? onSubmit,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => AddReviewBottomSheet(onSubmit: onSubmit),
    );
  }

  @override
  State<AddReviewBottomSheet> createState() => _AddReviewBottomSheetState();
}

class _AddReviewBottomSheetState extends State<AddReviewBottomSheet> {
  int _selectedRating = 0;
  final TextEditingController _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
        top: 20.h,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'What Do You Think Of The Course?',
                style: TextStyles.font16authblackbold,
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.close, size: 20.sp, color: AppColors.grey),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Text(
            'Your Review Helps Other Students Make The Right Decision.',
            style: TextStyles.font14greyregular,
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              final starIndex = index + 1;
              return IconButton(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                constraints: const BoxConstraints(),
                onPressed: () {
                  setState(() {
                    _selectedRating = starIndex;
                  });
                },
                icon: Icon(
                  starIndex <= _selectedRating ? Icons.star : Icons.star_border,
                  size: 32.sp,
                  color: starIndex <= _selectedRating
                      ? AppColors.orange
                      : AppColors.borderColor,
                ),
              );
            }),
          ),
          SizedBox(height: 20.h),

          Expanded(
            child: // Review TextField
            TextField(
              controller: _commentController,
              maxLines: 6, 
              style: TextStyles.font14authblackregular,
              decoration: InputDecoration(
                hintText: 'Write Your Review Here (Optional)...',
                hintStyle: TextStyles.font14hintcolorregular,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 8.h,
                ), 
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: const BorderSide(color: AppColors.borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: const BorderSide(color: AppColors.mainBlue),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 33.h),
            child: SizedBox(
              width: double.infinity,
              height: 48.h,
              child: ElevatedButton(
                onPressed: () {
                  if (widget.onSubmit != null) {
                    widget.onSubmit!(_selectedRating, _commentController.text);
                  }
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainBlue,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                ),
                child: Text('Post Review', style: TextStyles.font16whitebold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
