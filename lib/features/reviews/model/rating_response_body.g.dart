// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingResponseBody _$RatingResponseBodyFromJson(Map<String, dynamic> json) =>
    RatingResponseBody(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: ReviewsSummaryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RatingResponseBodyToJson(RatingResponseBody instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

ReviewsSummaryData _$ReviewsSummaryDataFromJson(Map<String, dynamic> json) =>
    ReviewsSummaryData(
      averageRating: (json['average_rating'] as num).toDouble(),
      totalReviews: (json['total_reviews'] as num).toInt(),
      distribution: (json['distribution'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, RatingDistribution.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ReviewsSummaryDataToJson(ReviewsSummaryData instance) =>
    <String, dynamic>{
      'average_rating': instance.averageRating,
      'total_reviews': instance.totalReviews,
      'distribution': instance.distribution,
    };

RatingDistribution _$RatingDistributionFromJson(Map<String, dynamic> json) =>
    RatingDistribution(
      count: (json['count'] as num).toInt(),
      percentage: (json['percentage'] as num).toDouble(),
    );

Map<String, dynamic> _$RatingDistributionToJson(RatingDistribution instance) =>
    <String, dynamic>{
      'count': instance.count,
      'percentage': instance.percentage,
    };
