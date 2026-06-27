
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/features/setting/widgets/setting_tile_body.dart';

class SupportAndHelp extends StatelessWidget {
  const SupportAndHelp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0.w,
        vertical: 22.h,
      ),
      child: Column(
        children: [
          SettingTileBody(
            title: "FAQs and Help Center",
            imagepath: "assets/svg/FAQ.svg",
          ),
          SettingTileBody(
            title: "Contact Us",
            imagepath: "assets/svg/contact_us.svg",
          ),
          SettingTileBody(
            title: "Terms and Privacy Policy",
            imagepath: "assets/svg/terms.svg",
          ),
        ],
      ),
    );
  }
}
