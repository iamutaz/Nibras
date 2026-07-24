
import 'package:json_annotation/json_annotation.dart';

part 'review_request_body.g.dart';

@JsonSerializable()
class ReviewRequestBody {
  int id;
  ReviewRequestBody({required this.id});

  Map<String, dynamic> toJson() => _$ReviewRequestBodyToJson(this);
}