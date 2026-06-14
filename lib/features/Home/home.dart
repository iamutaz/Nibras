import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class Home extends StatelessWidget {
  Home({super.key});
  String username = "Danchu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 48.r),
                  
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 14.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome, $username ",
                          style: TextStyles.font16homeBlackBold,
                        ),
                        InkWell(
                          child: Text(
                            "Edit occupation and interests",
                            style: TextStyles.font14mainBlueSemiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    child: SvgPicture.asset("assets/svg/cart.svg"),
                  )
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
