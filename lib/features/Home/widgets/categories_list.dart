import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';

class DoubledCategoryList extends StatefulWidget {
  const DoubledCategoryList({super.key});

  @override
  State<DoubledCategoryList> createState() => _DoubledCategoryListState();
}

class _DoubledCategoryListState extends State<DoubledCategoryList> {
  final ScrollController _topController = ScrollController();
  final ScrollController _bottomController = ScrollController();

  @override
  void initState() {
    super.initState();
    
    _topController.addListener(() {
      if (_topController.offset != _bottomController.offset) {
        _bottomController.jumpTo(_topController.offset);
      }
    });

    _bottomController.addListener(() {
      if (_bottomController.offset != _topController.offset) {
        _topController.jumpTo(_bottomController.offset);
      }
    });
  }

  @override
  void dispose() {
    _topController.dispose();
    _bottomController.dispose();
    super.dispose();
  }

  // داتا تجريبية تشبه التصميم المرسل
  final List<String> topCategories = ['UX Design', 'Financial', 'Self-improvement', 'Data Science', 'Business'];
  final List<String> bottomCategories = ['Photography', 'Electrical System', 'Productivity', 'Marketing', 'Art'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        //top list
        SizedBox(
          height: 50.h,
          child: ListView.builder(
            controller: _topController, 
            scrollDirection: Axis.horizontal,
            itemCount: topCategories.length,
            padding:  EdgeInsets.symmetric(horizontal: 8.w),
            itemBuilder: (context, index) {
              return _buildCategoryChip(topCategories[index]);
            },
          ),
        ),
        
         SizedBox(height: 10.h), 
        //bottom list
        SizedBox(
          height: 50.h,
          child: ListView.builder(
            controller: _bottomController, 
            scrollDirection: Axis.horizontal,
            itemCount: bottomCategories.length,
            padding:  EdgeInsets.symmetric(horizontal: 8.w),
            itemBuilder: (context, index) {
              return _buildCategoryChip(bottomCategories[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryChip(String label) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.avatarColor),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}