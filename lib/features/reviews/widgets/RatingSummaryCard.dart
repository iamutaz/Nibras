import 'package:flutter/material.dart';
import 'package:nibras/features/reviews/model/RatingStatsResponseBody.dart';


class RatingSummaryCard extends StatelessWidget {
  final RatingStatsResponseBody stats;

  const RatingSummaryCard({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xffF9FAFB),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          // الطرف الأيسر: التقييم الكلي والنجوم الديناميكية
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  stats.averageRating.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5D3EBC),
                  ),
                ),
                const SizedBox(height: 4),
                
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    IconData iconData = Icons.star_rounded;
                    Color iconColor = Colors.grey.shade300;

                    if (index < stats.averageRating.floor()) {
           
                      iconData = Icons.star_rounded;
                      iconColor = const Color(0xff5D3EBC);
                    } else if (index < stats.averageRating && (stats.averageRating - index) >= 0.5) {
                 
                      iconData = Icons.star_half_rounded;
                      iconColor = const Color(0xff5D3EBC);
                    }

                    return Icon(
                      iconData,
                      color: iconColor,
                      size: 16,
                    );
                  }),
                ),
                
                const SizedBox(height: 6),
                Text(
                  '(${stats.totalReviews} Reviews)',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
 
          Expanded(
            flex: 3,
            child: Column(
              children: List.generate(5, (index) {
                final starNumber = (5 - index).toString();
                final item = stats.distribution[starNumber];
                final rawPercentage = item?.percentage ?? 0.0;
                final progressValue = rawPercentage > 1.0 ? rawPercentage / 100 : rawPercentage;

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 48,
                        child: Text(
                          '$starNumber Stars',
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: progressValue.clamp(0.0, 1.0),
                            minHeight: 6,
                            backgroundColor: Colors.grey.shade200,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xff5D3EBC),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}