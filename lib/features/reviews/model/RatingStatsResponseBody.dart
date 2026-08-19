class RatingStatsResponseBody {
  final double averageRating;
  final int totalReviews;
  final Map<String, RatingDistributionItem> distribution;

  RatingStatsResponseBody({
    required this.averageRating,
    required this.totalReviews,
    required this.distribution,
  });

  factory RatingStatsResponseBody.fromJson(Map<String, dynamic> json) {
    final data = json['data'] is Map<String, dynamic> ? json['data'] : json;

    Map<String, RatingDistributionItem> distMap = {};
    if (data['distribution'] != null && data['distribution'] is Map) {
      (data['distribution'] as Map<String, dynamic>).forEach((key, value) {
        if (value is Map<String, dynamic>) {
          distMap[key] = RatingDistributionItem.fromJson(value);
        }
      });
    }

    return RatingStatsResponseBody(
      averageRating: (data['average_rating'] as num?)?.toDouble() ?? 0.0,
      totalReviews: (data['total_reviews'] as num?)?.toInt() ?? 0,
      distribution: distMap,
    );
  }
}

class RatingDistributionItem {
  final int count;
  final double percentage;

  RatingDistributionItem({
    required this.count,
    required this.percentage,
  });

  factory RatingDistributionItem.fromJson(Map<String, dynamic> json) {
    return RatingDistributionItem(
      count: (json['count'] as num?)?.toInt() ?? 0,
      percentage: (json['percentage'] as num?)?.toDouble() ?? 0.0,
    );
  }
}