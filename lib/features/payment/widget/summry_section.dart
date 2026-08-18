
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/payment/payment_page.dart';

class SummrySection extends StatelessWidget {
  const SummrySection({
    super.key,
    required this.widget,
    required double discountAmount,
    required double finalPrice,
  }) : _discountAmount = discountAmount, _finalPrice = finalPrice;

  final PaymentPage widget;
  final double _discountAmount;
  final double _finalPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        
        color: AppColors.cardColor,
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(8.r)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal",
                  style: TextStyles.font10lightgreymedium
                ),
                Text(
                  "\$${widget.originalPrice.toStringAsFixed(2)}",
                  style: TextStyles.font12blackdetailsmiduem,
                ),
              ],
            ),
            SizedBox(height: 6.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount",
                  style: TextStyles.font10lightgreymedium
                ),
                Text(
                  "-\$${_discountAmount.toStringAsFixed(2)}",
                  style: TextStyles.font16authblackbold.copyWith(
                    color: Colors.red,
                    fontSize: 12
                  ),
                ),
              ],
            ),
            Divider(height: 32.h, color: AppColors.borderColor),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Final Total",
                  style: TextStyles.font10lightgreymedium,
                ),
                Text(
                  "\$${_finalPrice.toStringAsFixed(2)}",
                  style: TextStyles.font20mainbluesemiBold.copyWith(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
