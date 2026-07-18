import 'package:json_annotation/json_annotation.dart';

part 'rating_response_body.g.dart';

@JsonSerializable()
class RatingResponseBody {
  final bool success;
  final String message;
  final ReviewsSummaryData data;

  RatingResponseBody({
    required this.success,
    required this.message,
    required this.data,
  });

  factory RatingResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RatingResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RatingResponseBodyToJson(this);
}

@JsonSerializable()
class ReviewsSummaryData {
  @JsonKey(name: 'average_rating')
  final double averageRating;

  @JsonKey(name: 'total_reviews')
  final int totalReviews;

  final Map<String, RatingDistribution> distribution;

  ReviewsSummaryData({
    required this.averageRating,
    required this.totalReviews,
    required this.distribution,
  });

  factory ReviewsSummaryData.fromJson(Map<String, dynamic> json) {
    final distributionJson = json['distribution'];
    final distribution = <String, RatingDistribution>{};

    if (distributionJson is Map) {
      distributionJson.forEach((key, value) {
        if (value is Map<String, dynamic>) {
          distribution[key.toString()] = RatingDistribution.fromJson(value);
        } else if (value is Map) {
          distribution[key.toString()] = RatingDistribution.fromJson(
            Map<String, dynamic>.from(value),
          );
        }
      });
    }

    return ReviewsSummaryData(
      averageRating: (json['average_rating'] as num?)?.toDouble() ?? 0.0,
      totalReviews: (json['total_reviews'] as num?)?.toInt() ?? 0,
      distribution: distribution,
    );
  }

  Map<String, dynamic> toJson() => _$ReviewsSummaryDataToJson(this);
}

@JsonSerializable()
class RatingDistribution {
  final int count;
  final double percentage;

  RatingDistribution({required this.count, required this.percentage});

  factory RatingDistribution.fromJson(Map<String, dynamic> json) =>
      RatingDistribution(
        count: (json['count'] as num?)?.toInt() ?? 0,
        percentage: (json['percentage'] as num?)?.toDouble() ?? 0.0,
      );

  Map<String, dynamic> toJson() => _$RatingDistributionToJson(this);
}
