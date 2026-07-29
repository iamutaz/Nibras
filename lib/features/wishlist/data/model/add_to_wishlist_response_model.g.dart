// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_wishlist_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToWishlistResponseModel _$AddToWishlistResponseModelFromJson(
  Map<String, dynamic> json,
) => AddToWishlistResponseModel(
  success: json['success'] as bool,
  message: json['message'] as String,
);

Map<String, dynamic> _$AddToWishlistResponseModelToJson(
  AddToWishlistResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
};
