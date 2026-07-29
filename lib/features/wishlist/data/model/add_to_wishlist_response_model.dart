import 'package:json_annotation/json_annotation.dart';

part 'add_to_wishlist_response_model.g.dart';

@JsonSerializable()
class AddToWishlistResponseModel {
  bool success;
  String message;

  AddToWishlistResponseModel({required this.success, required this.message});

  factory AddToWishlistResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddToWishlistResponseModelFromJson(json);
}
