import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class WishlistCourseBody extends StatelessWidget {
  final String title;
  final String? thumbnailUrl;
  final double price;
  final bool isFree;
  final double averageRating;
  final int reviewsCount;
  final String instructorName;

  const WishlistCourseBody({
    super.key,
    required this.title,
    this.thumbnailUrl,
    required this.price,
    required this.isFree,
    required this.averageRating,
    required this.reviewsCount,
    required this.instructorName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              width: 90.h,
              height: 60.w,
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: thumbnailUrl != null
                  ? Image.network(
                      thumbnailUrl!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.image_not_supported,
                        color: Colors.grey,
                      ),
                    )
                  : const Icon(Icons.image_not_supported, color: Colors.grey),
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.font14authblackbold,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 4),

                Text(
                  instructorName,
                  style: TextStyles.font12lightgreymedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 4),

                Row(
                  children: [
                    Text(
                      averageRating.toStringAsFixed(1),
                      style: TextStyles.font12orangesemibold
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.star, color: AppColors.orange, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      '($reviewsCount)',
                      style: TextStyles.font12hintcolorregular
                    ),
                  ],
                ),

                const SizedBox(height: 4),

                Text(
                  isFree ? 'Free' : '€${price.toStringAsFixed(2)}',
                  style: TextStyles.font16mainbluebold
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
