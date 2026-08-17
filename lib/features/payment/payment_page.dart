import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart' show TextStyles;
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/payment/widget/payment_course_item.dart';
import 'package:nibras/features/payment/widget/summry_section.dart';

class PaymentPage extends StatefulWidget {
  final int courseId;
  final String courseName;
  final String instructorName;
  final double originalPrice;

  const PaymentPage({
    super.key,
    required this.courseId,
    required this.courseName,
    required this.instructorName,
    required this.originalPrice,
  });

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController _couponController = TextEditingController();

  bool _isCouponApplied = false;
  double _discountAmount = 0.0;
  String? _intentId; // تخزين الـ ID القادم من الطلب

  // حساب السعر النهائي
  double get _finalPrice => widget.originalPrice - _discountAmount;

  @override
  void dispose() {
    _couponController.dispose();
    super.dispose();
  }

  // عرض الـ Payment Sheet السفلي بدلاً من الـ Dialog
  void _showPaymentBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (BuildContext context) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 16.h,
              left: 16.w,
              right: 16.w,
              top: 16.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Header (Badge & Close Button)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          "TEST",
                          style: TextStyle(
                            color: Colors.amber.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
          
                  SizedBox(height: 12.h),
          
                  Text(
                    "Add card",
                    style: TextStyles.font16authblackbold.copyWith(
                      fontSize: 18.sp,
                    ),
                  ),
          
                  SizedBox(height: 16.h),
          
                  // Card Number Field
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Card number",
                      hintStyle: TextStyles.font12lightgreymedium,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 14.h,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
          
                  SizedBox(height: 8.h),
          
                  // Expiry Date & CVC Row
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            hintText: "MM / YY",
                            hintStyle: TextStyles.font12lightgreymedium,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 14.h,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "CVC",
                            hintStyle: TextStyles.font12lightgreymedium,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 14.h,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          
                  SizedBox(height: 16.h),
          
                  // Billing Address Section
                  Text("Billing address", style: TextStyles.font12darkgreymiduem),
                  SizedBox(height: 8.h),
                  DropdownButtonFormField<String>(
                    value: "Jordan",
                    items: const [
                      DropdownMenuItem(value: "Jordan", child: Text("Jordan")),
                      DropdownMenuItem(value: "Palestine", child: Text("Palestine")),
                      DropdownMenuItem(value: "Saudi Arabia", child: Text("Saudi Arabia")),
                    ],
                    onChanged: (val) {},
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 14.h,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
          
                  SizedBox(height: 24.h),
          
                  // Pay Button
                  SizedBox(
                    width: double.infinity,
                    height: 48.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.mainBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () {
                        // TODO: Confirm Intent API call
                        /*
                          context.read<PaymentCubit>().confirmPaymentIntent(
                            intentId: _intentId!,
                          );
                        */
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pay US\$${_finalPrice.toStringAsFixed(2)}",
                            style: TextStyles.font16mainbluebold.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Icon(Icons.lock, size: 16.sp, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
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
      appBar: AppBar(
        title: Text("Cart", style: TextStyles.font16authblackbold),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Course Item Card
              PaymentCourseItem(widget: widget),

              SizedBox(height: 24.h),

              // 2. Discount Code Section
              Text("Discount Code", style: TextStyles.font12darkgreymiduem),
              SizedBox(height: 8.h),

              if (_isCouponApplied)
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 12.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Colors.green),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discount successfully applied!",
                        style: TextStyles.font12redmiduem.copyWith(
                          color: Colors.green,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isCouponApplied = false;
                            _discountAmount = 0.0;
                            _couponController.clear();
                          });
                        },
                        child: Text(
                          "Remove",
                          style: TextStyles.font12redmiduem,
                        ),
                      ),
                    ],
                  ),
                )
              else
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _couponController,
                        decoration: InputDecoration(
                          hintText: "Example: NIBRAS10",
                          hintStyle: TextStyles.font12lightgreymedium,
                          prefixIcon: const Icon(
                            Icons.local_offer_outlined,
                            size: 18,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12.h,
                            horizontal: 16.w,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide(
                              color: AppColors.borderColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide(
                              color: AppColors.borderColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.mainYellow,
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                          vertical: 12.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                      onPressed: () {
                        // TODO: Check Coupon logic
                      },
                      child: Text(
                        "Apply",
                        style: TextStyles.font16authblackbold,
                      ),
                    ),
                  ],
                ),

              SizedBox(height: 32.h),

              // 3. Summary Section
              SummrySection(
                widget: widget,
                discountAmount: _discountAmount,
                finalPrice: _finalPrice,
              ),
            ],
          ),
        ),
      ),

      // 4. Sticky Bottom Payment Button
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0).copyWith(bottom: 2.h),
          child: AppTextButton(
            onpressed: _showPaymentBottomSheet,
            textButton: "Check",
            icon: Icon(Icons.credit_card, size: 20.sp, color: Colors.black),
            textStyle: TextStyles.font16authblackbold,
          ),
        ),
      ),
    );
  }
}