import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/onboarding/presentation/widgets/continue_to_widget.dart';
import 'package:nibras/features/onboarding/presentation/widgets/start_your_joureny.dart';
import 'package:nibras/features/onboarding/presentation/widgets/subtitle_screen.dart';

import '../../../../core/widgets/app_text_button.dart';

class ContinueWithGoogle extends StatelessWidget {
  const ContinueWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/login_with_google.png",width: 345,height: 354,),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.0.h),
              child: Start_your_joureny_widget(),
            ),
            SubtitleScreen(),
            SizedBox(height: 24.h,),
            AppTextButton(
              onpressed: (){},
              textButton: "Continue with Google",
              textStyle: TextStyles.font16lighterblacksemiBold,
              widthbutton: 322.w,
              icon: "assets/svg/Google.svg",

            ),
            SizedBox(height: 16.h,),
            AppTextButton(onpressed: () => context.pushNamed(RoutesName.signup),
              textButton: "Continue with Email",
              icon: "assets/svg/mail.svg",
              textStyle: TextStyles.font16lighterblacksemiBold,
              widthbutton: 322.w,
              buttoncolor: Colors.white,
              borderColor: Colors.black,
              borderWidth: 2,),
            ContinueToWidget(),
            SizedBox(height: 24.h,),
            Center(child: InkWell(
              onTap: () => context.pushNamed(RoutesName.login),
              child: Text("Login to your account",style: TextStyles.font16lighterblacksemiBold,)
            ))
          ],
        ),
      ),
    );
  }


}
