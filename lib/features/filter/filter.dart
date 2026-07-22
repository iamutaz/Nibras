import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'widgets/sort_by_widget.dart';
import 'widgets/rating_filter_widget.dart';
import 'widgets/price_filter_widget.dart';
import 'widgets/filter_bottom_buttons.dart';
import 'data/model/filter_params.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  String? _selectedSort;
  int? _selectedRating;
  String? _selectedPrice;

  void _resetFilters() {
    setState(() {
      _selectedSort = null;
      _selectedRating = null;
      _selectedPrice = null;
    });
  }

  void _applyFilters() {
    final filters = FilterParams(
      sortBy: FilterParams.sortValueFromLabel(_selectedSort),
      rating: _selectedRating,
      price: _selectedPrice,
    );
    Navigator.pop(context, filters);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.mainBlack,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Filter',
          style: TextStyles.font20blackbold.copyWith(fontSize: 18.sp),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/svg/filter.svg',
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 4,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(height: 30, thickness: 0.4),
                    SortByWidget(
                      selectedSort: _selectedSort,
                      onSortChanged: (value) =>
                          setState(() => _selectedSort = value),
                    ),
                    const Divider(height: 30, thickness: 0.4),
                    RatingFilterWidget(
                      selectedRating: _selectedRating,
                      onRatingChanged: (star) =>
                          setState(() => _selectedRating = star),
                    ),
                    const Divider(height: 30, thickness: 0.5),
                    PriceFilterWidget(
                      selectedPrice: _selectedPrice,
                      onPriceChanged: (value) =>
                          setState(() => _selectedPrice = value),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: FilterBottomButtons(
                onReset: _resetFilters,
                onApply: _applyFilters,
              ),
            ),
          ],
        ),
      ),
    );
  }
}