class QuizResultsResponseBody {
final int courseId;
final String courseTitle;
final int passingScore;
final QuizResultsSummary summary;
final List<QuizResultItem> quizzes;

QuizResultsResponseBody({
required this.courseId,
required this.courseTitle,
required this.passingScore,
required this.summary,
required this.quizzes,
});

factory QuizResultsResponseBody.fromJson(Map<String, dynamic> json) {
return QuizResultsResponseBody(
courseId: (json['course_id'] as num).toInt(),
courseTitle: json['course_title'] as String,
passingScore: (json['passing_score'] as num).toInt(),
summary: QuizResultsSummary.fromJson(json['summary'] as Map<String, dynamic>),
quizzes: (json['quizzes'] as List)
.map((item) => QuizResultItem.fromJson(item as Map<String, dynamic>))
.toList(),
);
}
}

class QuizResultsSummary {
final int total;
final int passed;
final int failed;
final int locked;

QuizResultsSummary({
required this.total,
required this.passed,
required this.failed,
required this.locked,
});

factory QuizResultsSummary.fromJson(Map<String, dynamic> json) {
return QuizResultsSummary(
total: (json['total'] as num).toInt(),
passed: (json['passed'] as num).toInt(),
failed: (json['failed'] as num).toInt(),
locked: (json['locked'] as num).toInt(),
);
}
}

class QuizResultItem {
final int quizId;
final String quizTitle;
final String type;
final String? sectionTitle;
final int passingScore;
final int maxAttempts;
final int attemptsUsed;
final int attemptsLeft;
final bool isLocked;
final String status;
final int? score;
final String? submittedAt;
final bool canRetake;

QuizResultItem({
required this.quizId,
required this.quizTitle,
required this.type,
this.sectionTitle,
required this.passingScore,
required this.maxAttempts,
required this.attemptsUsed,
required this.attemptsLeft,
required this.isLocked,
required this.status,
this.score,
this.submittedAt,
required this.canRetake,
});

static int? _parseScore(dynamic value) {
if (value == null) return null;
if (value is num) return value.toInt();
if (value is String) return double.parse(value).toInt();
return null;
}

static bool _parseBool(dynamic value) {
if (value is bool) return value;
if (value is num) return value == 1;
if (value is String) return value == '1' || value.toLowerCase() == 'true';
return false;
}

factory QuizResultItem.fromJson(Map<String, dynamic> json) {
return QuizResultItem(
quizId: (json['quiz_id'] as num).toInt(),
quizTitle: json['quiz_title'] as String,
type: json['type'] as String,
sectionTitle: json['section_title'] as String?,
passingScore: (json['passing_score'] as num).toInt(),
maxAttempts: (json['max_attempts'] as num).toInt(),
attemptsUsed: (json['attempts_used'] as num).toInt(),
attemptsLeft: (json['attempts_left'] as num).toInt(),
isLocked: _parseBool(json['is_locked']),
status: json['status'] as String,
score: _parseScore(json['score']),
submittedAt: json['submitted_at'] as String?,
canRetake: _parseBool(json['can_retake']),
);
}
}