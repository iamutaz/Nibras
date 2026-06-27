import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/course_card.dart';
import 'package:nibras/features/Home/widgets/categories_list.dart';
import 'package:nibras/features/Home/widgets/categories_see_all.dart';
import 'package:nibras/features/Home/widgets/profile_row.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String username = "Danchu";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ProfileRow(username: username),
              Divider(color: AppColors.avatarColor, thickness: 1),
              SizedBox(height: 30.h),
              CategoriesSeeAll(),
              SizedBox(height: 16.5.h),
              DoubledCategoryList(),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Cources",
                      style: TextStyles.font16homeblackbold,
                    ),
                    Text("See all", style: TextStyles.font12mainbluesemiBold),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 312.h,
                child: buildListViewBuilder(),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0.w,
                  vertical: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //TODO: Change the "Top Cources in \"  \""
                    Text(
                      "Top Cources in \"  \"",
                      style: TextStyles.font16homeblackbold,
                    ),
                    Text("See all", style: TextStyles.font12mainbluesemiBold),
                  ],
                ),
              ),
              SizedBox(height: 312.h, child: buildListViewBuilder()),
            ],
          ),
        ),
      ),
    );
  }

  ListView buildListViewBuilder() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: CourseCard(
            width: 290.h,
            height: 312.w,
            courseTitle: "Designing User Interfaces and Experiences (UI/UX)",
            courseSource: "IBM",
            rate: "4.5",
            logo: "assets/svg/frame.svg",
            skills:
                "User Centered Design, User Experience Design, Responsive Web Design, User Interface (UI) Design, Web Design and ",
            numberOfReviews: "(314)",
            discountedPrice: "9.99",
            realPrice: "14.99",
          ),
        );
      }),
    );
  }
}
