import 'package:json_annotation/json_annotation.dart';
import 'package:nibras/features/Home/data/model/body_course.dart';

part 'home_response_body.g.dart';

@JsonSerializable()
class HomeResponseBody {
  bool success;
  List<BodyCourse> data;

  HomeResponseBody({required this.data, required this.success});

  factory HomeResponseBody.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseBodyFromJson(json);
}
