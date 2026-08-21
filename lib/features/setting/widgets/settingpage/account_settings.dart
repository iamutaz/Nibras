
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/features/setting/widgets/settingpage/setting_tile_body.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({
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
          InkWell(
            onTap: () => context.pushNamed(RoutesName.accountdetails),
            child: SettingTileBody(
              title: "Account Details",
              imagepath: "assets/svg/profile_details.svg",
            ),
          ),
          GestureDetector(
            onTap: () => context.pushNamed(RoutesName.submitemail),
            child: SettingTileBody(
              title: "Security and Password",
              imagepath: "assets/svg/security.svg",
            ),
          ),
          SettingTileBody(
            title: "Language",
            imagepath: "assets/svg/language.svg",
          ),
          SettingTileBody(
            title: "Notifications",
            imagepath: "assets/svg/notifications.svg",
          ),
        ],
      ),
    );
  }
}