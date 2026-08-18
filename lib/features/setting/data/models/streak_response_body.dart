class StreakResponseBody {
  final int currentStreak;
  final int longestStreak;
  final String? lastActivityDate;
  final bool isActiveToday;

  StreakResponseBody({
    required this.currentStreak,
    required this.longestStreak,
    this.lastActivityDate,
    required this.isActiveToday,
  });

  factory StreakResponseBody.fromJson(Map<String, dynamic> json) {
    return StreakResponseBody(
      currentStreak: json['current_streak'] as int,
      longestStreak: json['longest_streak'] as int,
      lastActivityDate: json['last_activity_date'] as String?,
      isActiveToday: json['is_active_today'] as bool,
    );
  }
}