import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:nibras/core/DI/injection.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart' show TextStyles;
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/payment/data/cubit/confirm_payment_cubit.dart';
import 'package:nibras/features/payment/data/cubit/confirm_payment_state.dart';
import 'package:nibras/features/payment/data/cubit/coupon_cubit.dart';
import 'package:nibras/features/payment/data/cubit/coupon_state.dart';
import 'package:nibras/features/payment/data/cubit/intent_cubit.dart';
import 'package:nibras/features/payment/data/cubit/intent_state.dart';
import 'package:nibras/features/payment/data/model/confirm_payment/confirm_payment_request_body.dart';
import 'package:nibras/features/payment/data/model/create_payment_intent/create_payment_intent_request_body.dart';
import 'package:nibras/features/payment/data/model/validate_coupon/validate_coupon_request_body.dart';
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
  String? _couponCode;
  String? _couponError;

  // true من لحظة الضغط على Check لحد ما يخلص الدفع (نجاح أو فشل)
  bool _isProcessingPayment = false;

  double get _finalPrice => widget.originalPrice - _discountAmount;

  @override
  void dispose() {
    _couponController.dispose();
    super.dispose();
  }

  // ---------------- Coupon ----------------

  void _applyCoupon(BuildContext context) {
    final code = _couponController.text.trim();
    if (code.isEmpty) return;

    setState(() => _couponError = null);

    context.read<CouponCubit>().createIntent(
      ValidateCouponRequestBody(code: code, courseId: widget.courseId),
    );
  }

  void _removeCoupon() {
    setState(() {
      _isCouponApplied = false;
      _discountAmount = 0.0;
      _couponCode = null;
      _couponError = null;
      _couponController.clear();
    });
  }

  // ---------------- Checkout flow ----------------

  void _startCheckout(BuildContext context) {
    if (!_isCouponApplied || _isProcessingPayment) return;

    context.read<IntentCubit>().createIntent(
      CreatePaymentIntentRequest(
        courseId: widget.courseId,
        couponCode: _couponCode,
      ),
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

      // الدفع نجح من طرف Stripe -> أكّد مع الباك اند
      if (!context.mounted) return;
      context.read<ConfirmPaymentCubit>().confirmPayment(
        ConfirmPaymentRequestBody(
          courseId: widget.courseId,
          paymentIntentId: paymentIntentId,
        ),
      );
    } on StripeException catch (e) {
      setState(() => _isProcessingPayment = false);
      _showSnack(
        e.error.localizedMessage ?? 'تم إلغاء عملية الدفع',
        isError: true,
      );
    } catch (_) {
      setState(() => _isProcessingPayment = false);
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

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CouponCubit>(create: (_) => getIt<CouponCubit>()),
        BlocProvider<IntentCubit>(create: (_) => getIt<IntentCubit>()),
        BlocProvider<ConfirmPaymentCubit>(
          create: (_) => getIt<ConfirmPaymentCubit>(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
              // ---- Coupon ----
              BlocListener<CouponCubit, CouponState>(
                listener: (context, state) {
                  state.when(
                    couponsinitial: () {},
                    couponloading: () {},
                    couponsuccess: (data) {
                      setState(() {
                        _isCouponApplied = true;
                        _couponCode = data.data.code;
                        _discountAmount =
                            data.data.originalPrice - data.data.finalPrice;
                        _couponError = null;
                      });
                    },
                    couponfailure: (error) {
                      setState(() {
                        _isCouponApplied = false;
                        _couponError = error;
                      });
                    },
                  );
                },
              ),

              // ---- Create Intent ----
              BlocListener<IntentCubit, IntentState>(
                listener: (context, state) {
                  state.when(
                    intentinitial: () {},
                    intentloading: () {
                      setState(() => _isProcessingPayment = true);
                    },
                    intentsuccess: (data) {
                      _payWithStripe(
                        context,
                        clientSecret: data.data.clientSecret,
                        paymentIntentId: data.data.paymentIntentId,
                      );
                    },
                    intentfailure: (error) {
                      setState(() => _isProcessingPayment = false);
                      _showSnack(error, isError: true);
                    },
                  );
                },
              ),

              // ---- Confirm Payment ----
              BlocListener<ConfirmPaymentCubit, ConfirmPaymentState>(
                listener: (context, state) {
                  state.when(
                    confirmpaymentinitial: () {},
                    confirmpaymentloading: () {},
                    confirmpaymentsuccess: (data) {
                      setState(() => _isProcessingPayment = false);
                      _showSnack('Paid successfully!, Enjoy your course.');
                      Navigator.of(context).pop(true);
                    },
                    confirmpaymentfailure: (error) {
                      setState(() => _isProcessingPayment = false);
                      _showSnack(error, isError: true);
                    },
                  );
                },
              ),
            ],
            child: Scaffold(
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
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 1. Course Item Card
                        PaymentCourseItem(widget: widget),

                        SizedBox(height: 24.h),

                        // 2. Discount Code Section
                        Text(
                          "Discount Code",
                          style: TextStyles.font12darkgreymiduem,
                        ),
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
                                  onTap: _removeCoupon,
                                  child: Text(
                                    "Remove",
                                    style: TextStyles.font12redmiduem,
                                  ),
                                ),
                              ],
                            ),
                          )
                        else
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: _couponController,
                                      decoration: InputDecoration(
                                        hintText: "Example: NIBRAS10",
                                        hintStyle:
                                            TextStyles.font12lightgreymedium,
                                        prefixIcon: const Icon(
                                          Icons.local_offer_outlined,
                                          size: 18,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: 12.h,
                                          horizontal: 16.w,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          borderSide: BorderSide(
                                            color: AppColors.borderColor,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          borderSide: BorderSide(
                                            color: AppColors.borderColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12.w),
                                  BlocBuilder<CouponCubit, CouponState>(
                                    builder: (context, state) {
                                      final isLoading = state.maybeWhen(
                                        couponloading: () => true,
                                        orElse: () => false,
                                      );
                                      return ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              AppColors.mainYellow,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 24.w,
                                            vertical: 12.h,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.r),
                                          ),
                                        ),
                                        onPressed: isLoading
                                            ? null
                                            : () => _applyCoupon(context),
                                        child: isLoading
                                            ? SizedBox(
                                                width: 16.w,
                                                height: 16.w,
                                                child:
                                                    const CircularProgressIndicator(
                                                  strokeWidth: 2,
                                                ),
                                              )
                                            : Text(
                                                "Apply",
                                                style: TextStyles
                                                    .font16authblackbold,
                                              ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              if (_couponError != null) ...[
                                SizedBox(height: 6.h),
                                Text(
                                  _couponError!,
                                  style: TextStyles.font12redmiduem,
                                ),
                              ],
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
              ),

              // 4. Sticky Bottom Payment Button
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0).copyWith(bottom: 2.h),
                  child: AppTextButton(
                    onpressed: (_isCouponApplied && !_isProcessingPayment)
                        ? () => _startCheckout(context)
                        : null,
                    textButton:
                        _isProcessingPayment ? "Processing..." : "Check",
                    icon: _isProcessingPayment
                        ? SizedBox(
                            width: 20.sp,
                            height: 20.sp,
                            child: const CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.black,
                            ),
                          )
                        : Icon(
                            Icons.credit_card,
                            size: 20.sp,
                            color: Colors.black,
                          ),
                    textStyle: TextStyles.font16authblackbold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}