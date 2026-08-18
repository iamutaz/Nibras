import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart' show TextStyles;
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/gift/data/cubit/confirm_gift_cubit.dart';
import 'package:nibras/features/gift/data/cubit/confirm_gift_state.dart';
import 'package:nibras/features/gift/data/cubit/craete_gift_cubit.dart';
import 'package:nibras/features/gift/data/cubit/craete_gift_state.dart';
import 'package:nibras/features/gift/data/model/confirm_gift_request_body.dart';
import 'package:nibras/features/gift/data/model/create_gift_request_body.dart';

class GiftPage extends StatefulWidget {
  final int courseId;
  final String courseName;
  final String instructorName;
  final double originalPrice;

  const GiftPage({
    super.key,
    required this.courseId,
    required this.courseName,
    required this.instructorName,
    required this.originalPrice,
  });

  @override
  State<GiftPage> createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  bool _isProcessing = false;

  // ---------------- Checkout flow ----------------

  void _startGiftCheckout(BuildContext context) {
    if (_isProcessing) return;

    context.read<CraeteGiftCubit>().creategift(
      CreateGiftRequestBody(courseId: widget.courseId),
    );
  }

  Future<void> _payWithStripe(
    BuildContext context, {
    required String clientSecret,
    required String paymentIntentId,
  }) async {
    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: clientSecret,
          merchantDisplayName: 'Nibras LMS',
        ),
      );

      await Stripe.instance.presentPaymentSheet();

      // الدفع نجح من طرف Stripe -> أكّد الهدية مع الباك اند
      if (!context.mounted) return;
      context.read<ConfirmGiftCubit>().confirmGift(
        ConfirmGiftRequestBody(
          courseId: widget.courseId,
          paymentIntentId: paymentIntentId,
        ),
      );
    } on StripeException catch (e) {
      setState(() => _isProcessing = false);
      _showSnack(
        e.error.localizedMessage ?? 'تم إلغاء عملية الدفع',
        isError: true,
      );
    } catch (_) {
      setState(() => _isProcessing = false);
      _showSnack('حدث خطأ غير متوقع، حاول مرة أخرى', isError: true);
    }
  }

  void _showSnack(String message, {bool isError = false}) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red : Colors.green,
      ),
    );
  }

  void _showGiftCodeDialog(String? code) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.card_giftcard, color: AppColors.mainBlue, size: 48.sp),
              SizedBox(height: 16.h),
              Text(
                "تم شراء الهدية بنجاح!",
                style: TextStyles.font16authblackbold,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                "شارك هذا الكود مع الشخص المهدى له لتفعيل الكورس",
                style: TextStyles.font12lightgreymedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              if (code != null)
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 14.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.mainBlue.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColors.mainBlue),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SelectableText(
                          code,
                          style: TextStyles.font16authblackbold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.copy, color: AppColors.mainBlue),
                        onPressed: () async {
                          await Clipboard.setData(ClipboardData(text: code));
                          _showSnack("تم نسخ الكود!");
                        },
                      ),
                    ],
                  ),
                )
              else
                Text(
                  "لم يتم استلام كود الهدية من الخادم",
                  style: TextStyles.font12redmiduem,
                  textAlign: TextAlign.center,
                ),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.infinity,
                child: AppTextButton(
                  onpressed: () {
                    Navigator.of(dialogContext).pop(); // close dialog
                    Navigator.of(context).pop(true); // leave gift page
                  },
                  textButton: "تم",
                  textStyle: TextStyles.font16authblackbold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        // ---- Create Gift Intent ----
        BlocListener<CraeteGiftCubit, CraeteGiftState>(
          listener: (context, state) {
            state.when(
              craetegiftinitial: () {},
              craetegiftloading: () {
                setState(() => _isProcessing = true);
              },
              craetegiftsuccess: (data) {
                _payWithStripe(
                  context,
                  clientSecret: data.data.clientSecret,
                  paymentIntentId: data.data.paymentIntentId,
                );
              },
              craetegiftfailure: (error) {
                setState(() => _isProcessing = false);
                _showSnack(error, isError: true);
              },
            );
          },
        ),

        BlocListener<ConfirmGiftCubit, ConfirmGiftState>(
          listener: (context, state) {
            state.when(
              confirmgiftinitial: () {},
              confirmgiftloading: () {},
              confirmgiftsuccess: (data) {
                setState(() => _isProcessing = false);
                _showGiftCodeDialog(data.data.code);
              },
              confirmgiftfailure: (error) {
                setState(() => _isProcessing = false);
                _showSnack(error, isError: true);
              },
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text("Gift a course", style: TextStyles.font16authblackbold),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Course card
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: AppColors.borderColor),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.courseName,
                          style: TextStyles.font16authblackbold,
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          widget.instructorName,
                          style: TextStyles.font12lightgreymedium,
                        ),
                        SizedBox(height: 12.h),
                        Text(
                          "\$${widget.originalPrice.toStringAsFixed(2)}",
                          style: TextStyles.font20mainbluesemiBold,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24.h),

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.card_giftcard, color: Colors.amber.shade900),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Text(
                            "after purchasing, you will receive a gift code to share with your friend.",
                            style: TextStyles.font12darkgreymiduem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0).copyWith(bottom: 2.h),
            child: AppTextButton(
              onpressed: _isProcessing
                  ? null
                  : () => _startGiftCheckout(context),
              textButton: _isProcessing ? "Processing..." : "Buy as Gift",
              icon: _isProcessing
                  ? SizedBox(
                      width: 20.sp,
                      height: 20.sp,
                      child: const CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.black,
                      ),
                    )
                  : Icon(Icons.card_giftcard, size: 20.sp, color: Colors.black),
              textStyle: TextStyles.font16authblackbold,
            ),
          ),
        ),
      ),
    );
  }
}
