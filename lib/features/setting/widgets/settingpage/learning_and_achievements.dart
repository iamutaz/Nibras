import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart' show RoutesName;
import 'package:nibras/features/setting/widgets/settingpage/setting_tile_body.dart';

class LearningAndAchivementes extends StatelessWidget {
  const LearningAndAchivementes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 22.h),
      child: Column(
        children: [
          SettingTileBody(
            title: "My Certificates",
            imagepath: "assets/svg/certification.svg",
          ),
          InkWell(
            onTap: () => context.pushNamed(RoutesName.showcourses),
            child: SettingTileBody(
              title: "My Courses",
              imagepath: "assets/svg/courses.svg",
            ),
          ),
          InkWell(
            onTap: () => context.pushNamed(RoutesName.wishlist),  
            child: SettingTileBody(
              title: "WishList",
              imagepath: "assets/svg/wishlist.svg",
            ),
          ),
        ],
      ),
    );
  }
}
