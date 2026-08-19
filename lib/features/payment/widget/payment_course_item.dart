
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:nibras/core/theme/colors/app_colors.dart';
// import 'package:nibras/core/theme/fonts/text_styles.dart';
// import 'package:nibras/features/payment/payment_page.dart';

// class PaymentCourseItem extends StatelessWidget {
//   const PaymentCourseItem({
//     super.key,
//     required this.widget,
//   });

//   final PaymentPage widget;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(12.w),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(color: AppColors.borderColor),
//       ),
//       child: Row(
//         children: [
//           // مكان صورة الكورس
//           Container(
//             width: 88.w,
//             height: 56.h,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8.r),
//               color: Colors.grey[300],
//               image: const DecorationImage(
//                 image: NetworkImage(
//                   'https://via.placeholder.com/150',
//                 ), // حط رابط الصورة الحقيقي هون
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(width: 12.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   widget.courseName,
//                   style: TextStyles.font16authblackbold,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 SizedBox(height: 4.h),
//                 Text(
//                   "Instructor: ${widget.instructorName}",
//                   style: TextStyles.font12lightgreymedium,
//                 ),
//                 SizedBox(height: 8.h),
//                 Text(
//                   "\$${widget.originalPrice.toStringAsFixed(2)}",
//                   style: TextStyles.font16mainbluebold,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
