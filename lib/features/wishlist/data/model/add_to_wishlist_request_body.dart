import 'package:json_annotation/json_annotation.dart';

part 'add_to_wishlist_request_body.g.dart';

@JsonSerializable()
class AddToWishlistRequestBody {
  @JsonKey(name: 'course_id')
  final int courseId;

  AddToWishlistRequestBody({required this.courseId});

  Map<String, dynamic> toJson() => _$AddToWishlistRequestBodyToJson(this);
}
