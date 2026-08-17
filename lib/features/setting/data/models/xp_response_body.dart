class XpResponseBody {
  final int totalXp;
  final int level;
  final int xpForNextLevel;
  final int levelProgress;

  XpResponseBody({
    required this.totalXp,
    required this.level,
    required this.xpForNextLevel,
    required this.levelProgress,
  });

  factory XpResponseBody.fromJson(Map<String, dynamic> json) {
    return XpResponseBody(
      totalXp: json['total_xp'] as int,
      level: json['level'] as int,
      xpForNextLevel: json['xp_for_next_level'] as int,
      levelProgress: json['level_progress'] as int,
    );
  }
}