class FeedbackItemResponseBody {
  final int id;
  final int rating;
  final String comment;
  final FeedbackStudent student;
  final String? instructorReply;
  final String? repliedAt;
  final String createdAt;

  FeedbackItemResponseBody({
    required this.id,
    required this.rating,
    required this.comment,
    required this.student,
    this.instructorReply,
    this.repliedAt,
    required this.createdAt,
  });

  factory FeedbackItemResponseBody.fromJson(Map<String, dynamic> json) {
    return FeedbackItemResponseBody(
      id: json['id'] as int,
      rating: json['rating'] as int,
      comment: json['comment'] as String,
      student: FeedbackStudent.fromJson(json['student'] as Map<String, dynamic>),
      instructorReply: json['instructor_reply'] as String?,
      repliedAt: json['replied_at'] as String?,
      createdAt: json['created_at'] as String,
    );
  }
}

class FeedbackStudent {
  final int id;
  final String name;
  final String? avatar;

  FeedbackStudent({
    required this.id,
    required this.name,
    this.avatar,
  });

  factory FeedbackStudent.fromJson(Map<String, dynamic> json) {
    return FeedbackStudent(
      id: json['id'] as int,
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
    );
  }
}