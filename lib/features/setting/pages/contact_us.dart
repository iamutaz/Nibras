import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart' show TextStyles;
import 'package:nibras/core/widgets/app_text_form_feild.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

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
        title: Text("Contact Us", style: TextStyles.font16titleblackbold),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.5),
          child: Divider(color: AppColors.avatarColor, height: 1.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We're here to help! Send us a message and we'll get back to you as soon as possible.",
                style: TextStyles.font14authblackbold,
              ),
              SizedBox(height: 16.h),
              Text("Message Subject", style: TextStyles.font12darkgreymiduem),
              SizedBox(height: 8.h),
              AppTextFormField(
                hintText: "Technical issue",
                hintStyle: TextStyles.font14authblackmid,
                validator: (value) {},
                suffixIcon: InkWell(
                  onTap: () {
                    //TODO : finish it
                  },
                  child: Icon(Icons.keyboard_arrow_down, size: 20),
                ),
              ),
              SizedBox(height: 24.h),
              Text("Youe message",style: TextStyles.font12darkgreymiduem,),
              AppTextFormField(hintText: "Write details of your problem here...", validator: (value){},),


            ],
          ),
        ),
      ),
    );
  }
}
