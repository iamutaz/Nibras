import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/certificate/data/cubit/generate_certificate_cubit.dart';
import 'package:nibras/features/certificate/data/model/generate_certificate/generate_certificate_request_body.dart';
import 'package:nibras/features/certificate/widget/generate_certificate_listiner.dart';

class GenerateCertificatePage extends StatelessWidget {
  final int enrollmentId;

  const GenerateCertificatePage({super.key, required this.enrollmentId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.cardColor,
            border: Border.all(color: AppColors.borderColor),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 16.h),

              Image.asset("assets/images/certificate.png", width: 300.w),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                child: AppTextButton(
                  textButton: "Generate Certificate",
                  textStyle: TextStyles.font16authblackbold,
                  onpressed: () => context
                      .read<GenerateCertificateCubit>()
                      .generateCertificate(
                        GenerateCertificateRequestBody(
                          enrollmentId: enrollmentId,
                        ),
                      ),
                ),
              ),
              GenerateCertificateBlocListener()
            ],
          ),
        ),
      ),
    );
  }
}
