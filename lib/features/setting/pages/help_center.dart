import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_form_feild.dart';
import 'package:nibras/features/setting/widgets/helpcenter/faq_item.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: InkWell(
          onTap: () => context.pop(),

          child: Icon(Icons.arrow_back_ios, size: 14, color: Colors.black),
        ),

        title: Text("Help Center", style: TextStyles.font16titleblackbold),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.5),
          child: Divider(color: AppColors.avatarColor, height: 1.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextFormField(
                hintText: "How can we help you?",
                validator: (value) {},
                prefixIcon: Icon(Icons.search, color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0.h),
                child: Text(
                  "Frequently Asked Questions",
                  style: TextStyles.font12hintcolormid,
                ),
              ),
              FaqItem(
                question: "How Can I Get My Certification?",
                answer:
                    "Once You Have Completed All The Course Lessons And Successfully Passed The Exams, Your Certificate Will Be Issued Automatically. You Can Find It In The \"My Certificates\" Section Of Your Profile.",
              ),
              FaqItem(
                question: "How Does The Regional Pricing System Work?",
                answer: "هنا نص الإجابة الثاني...",
              ),
              FaqItem(
                question: "What happens if the learning torch goes out?",
                answer: "هنا نص الإجابة الثالث...",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
