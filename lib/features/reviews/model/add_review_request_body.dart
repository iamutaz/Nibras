class AddReviewRequestBody {
  final int courseId;
  final int rating;
  final String comment;

  AddReviewRequestBody({
    required this.courseId,
    required this.rating,
    required this.comment,
  });

  Map<String, dynamic> toJson() {
    return {
      'course_id': courseId,
      'rating': rating,
      'comment': comment,
    };
  }
}