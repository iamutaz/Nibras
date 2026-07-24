import 'package:json_annotation/json_annotation.dart';

part 'review_response_body.g.dart';

@JsonSerializable()
class ReviewResponseBody {
  bool success;
  List<ReviewBody> data;

  ReviewResponseBody({required this.success, required this.data});

  factory ReviewResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewResponseBodyToJson(this);
}

@JsonSerializable()
class ReviewBody {
  String comment;
  @JsonKey(name: "created_at")
  String commentDate;
  StudentInfo? student;

  ReviewBody({required this.comment, required this.commentDate, this.student});

  factory ReviewBody.fromJson(Map<String, dynamic> json) {
    final rawStudent = json['student'];
    StudentInfo? student;

    if (rawStudent is Map<String, dynamic>) {
      student = StudentInfo.fromJson(rawStudent);
    } else if (rawStudent is List) {
      final firstStudent = rawStudent.isNotEmpty ? rawStudent.first : null;
      if (firstStudent is Map<String, dynamic>) {
        student = StudentInfo.fromJson(firstStudent);
      }
    }

    return ReviewBody(
      comment: json['comment'] as String,
      commentDate: json['created_at'] as String,
      student: student,
    );
  }

  Map<String, dynamic> toJson() => {
    'comment': comment,
    'created_at': commentDate,
    'student': student?.toJson(),
  };
}

@JsonSerializable()
class StudentInfo {
  String name;
  String? avatar;
  int id;

  StudentInfo({required this.name, this.avatar, required this.id});

  factory StudentInfo.fromJson(Map<String, dynamic> json) => StudentInfo(
    name: json['name'] as String? ?? 'Student',
    avatar: json['avatar'] as String?,
    id: (json['id'] as num?)?.toInt() ?? 0,
  );

  Map<String, dynamic> toJson() => {'name': name, 'avatar': avatar, 'id': id};
}
