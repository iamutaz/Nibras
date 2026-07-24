import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibras/core/helpers/shared_pref_helper.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/setting/data/cubits/logoutcubit/logout_cubit.dart';
import 'package:nibras/features/setting/widgets/settingpage/account_settings.dart';
import 'package:nibras/features/setting/widgets/settingpage/info_card.dart';
import 'package:nibras/features/setting/widgets/settingpage/learning_and_achievements.dart';
import 'package:nibras/features/setting/widgets/settingpage/logout_bloc_lisitner.dart';
import 'package:nibras/features/setting/widgets/settingpage/support_and_help.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50.h),
              CircleAvatar(
                radius: 35.r,
                backgroundColor: AppColors.avatarColor,

                child: SvgPicture.asset(
                  "assets/svg/profile_vector.svg",
                  height: 30.h,
                  width: 30.w,
                ),
              ),
              SizedBox(height: 10.h),
              Text("Danchu", style: TextStyles.font16homeblackbold),
              SizedBox(height: 5.h),
              Text(
                "ahmad.mohamed@gmail.com",
                style: TextStyles.font12mainbluesemiBold,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InfoCard(
                      image: "assets/svg/flame.svg",
                      title: "Learning Flame",
                      subtitle: "5 Days",
                    ),
                    InfoCard(
                      image: "assets/svg/coins.svg",
                      title: "Points Balance",
                      subtitle: "1,250",
                    ),
                  ],
                ),
              ),
              Divider(color: AppColors.dividercolor, thickness: 1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Align(
                  alignment: AlignmentGeometry.bottomLeft,
                  child: Text(
                    "Learning And Achievements",
                    style: TextStyles.font12hintcolormid,
                  ),
                ),
              ),
              LearningAndAchivementes(),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Align(
                  alignment: AlignmentGeometry.bottomLeft,
                  child: Text(
                    "Account Details",
                    style: TextStyles.font12hintcolormid,
                  ),
                ),
              ),
              AccountSettings(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Align(
                  alignment: AlignmentGeometry.bottomLeft,
                  child: Text(
                    "Support And Help",
                    style: TextStyles.font12hintcolormid,
                  ),
                ),
              ),
              SupportAndHelp(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0.w,
                  vertical: 30.h,
                ),
                child: AppTextButton(
                  onpressed: () {
                    context.read<LogoutCubit>().emitLogoutState();
                    SharedPrefHelper.clearAllData();
                    SharedPrefHelper.clearAllSecuredData();
                  },
                  textButton: "Log Out",
                  textStyle: TextStyles.font16whitebold,
                  icon: ("assets/svg/logout.svg"),
                  raduisbutton: 12.r,
                  buttoncolor: Colors.red,
                ),
              ),
              LogoutBlocListener()
            ],
          ),
        ),
      ),
    );
  }
}
