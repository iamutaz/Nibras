import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibras/core/helpers/shared_pref_helper.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/setting/data/cubits/profile_cubit.dart';
import 'package:nibras/features/setting/data/cubits/profile_state.dart';
import 'package:nibras/features/setting/data/cubits/streak_cubit.dart';
import 'package:nibras/features/setting/data/cubits/streak_state.dart';
import 'package:nibras/features/setting/data/cubits/xp_cubit.dart';
import 'package:nibras/features/setting/data/cubits/xp_state.dart';
import 'package:nibras/features/setting/data/cubits/logoutcubit/logout_cubit.dart';
import 'package:nibras/features/setting/data/repos/profile_repo.dart';
import 'package:nibras/features/setting/data/repos/streak_repo.dart';
import 'package:nibras/features/setting/data/repos/xp_repo.dart';
import 'package:nibras/features/setting/widgets/settingpage/account_settings.dart';
import 'package:nibras/features/setting/widgets/settingpage/info_card.dart';
import 'package:nibras/features/setting/widgets/settingpage/learning_and_achievements.dart';
import 'package:nibras/features/setting/widgets/settingpage/logout_bloc_lisitner.dart';
import 'package:nibras/features/setting/widgets/settingpage/support_and_help.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProfileCubit(ProfileRepo())..getMe()),
        BlocProvider(create: (_) => StreakCubit(StreakRepo())..getStreak()),
        BlocProvider(create: (_) => XpCubit(XpRepo())..getXp()),
      ],
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50.h),
                BlocBuilder<ProfileCubit, ProfileState>(
                  builder: (context, state) {
                    if (state is ProfileLoading || state is ProfileInitial) {
                      return CircleAvatar(
                        radius: 35.r,
                        backgroundColor: AppColors.avatarColor,
                        child: SvgPicture.asset(
                          "assets/svg/profile_vector.svg",
                          height: 30.h,
                          width: 30.w,
                        ),
                      );
                    }

                    if (state is ProfileSuccess) {
                      final user = state.user;
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 35.r,
                            backgroundColor: AppColors.avatarColor,
                            backgroundImage: user.avatar != null
                                ? NetworkImage(user.avatar!)
                                : null,
                            child: user.avatar == null
                                ? SvgPicture.asset(
                                    "assets/svg/profile_vector.svg",
                                    height: 30.h,
                                    width: 30.w,
                                  )
                                : null,
                          ),
                          SizedBox(height: 10.h),
                          Text(user.name, style: TextStyles.font16homeblackbold),
                          SizedBox(height: 5.h),
                          Text(
                            user.email,
                            style: TextStyles.font12mainbluesemiBold,
                          ),
                        ],
                      );
                    }

                    return CircleAvatar(
                      radius: 35.r,
                      backgroundColor: AppColors.avatarColor,
                      child: SvgPicture.asset(
                        "assets/svg/profile_vector.svg",
                        height: 30.h,
                        width: 30.w,
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<StreakCubit, StreakState>(
                        builder: (context, state) {
                          String subtitle = '-';
                          if (state is StreakSuccess) {
                            subtitle = '${state.streak.currentStreak} Days';
                          }
                          return InfoCard(
                            image: "assets/svg/flame.svg",
                            title: "Learning Flame",
                            subtitle: subtitle,
                          );
                        },
                      ),
                      BlocBuilder<XpCubit, XpState>(
                        builder: (context, state) {
                          String subtitle = '-';
                          if (state is XpSuccess) {
                            subtitle = '${state.xp.totalXp}';
                          }
                          return InfoCard(
                            image: "assets/svg/coins.svg",
                            title: "Points Balance",
                            subtitle: subtitle,
                          );
                        },
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
<<<<<<< HEAD
                    icon: SvgPicture.asset("assets/svg/logout.svg"),
=======
                    // icon: ("assets/svg/logout.svg"),
>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
                    raduisbutton: 12.r,
                    buttoncolor: Colors.red,
                  ),
                ),
                LogoutBlocListener()
              ],
            ),
          ),
        ),
      ),
    );
  }
}