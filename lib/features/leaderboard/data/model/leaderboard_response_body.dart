class LeaderboardResponseBody {
  final String period;
  final List<LeaderboardEntry> leaderboard;
  final int? myRank; 

  LeaderboardResponseBody({
    required this.period,
    required this.leaderboard,
    this.myRank,
  });

  factory LeaderboardResponseBody.fromJson(Map<String, dynamic> json) {
    return LeaderboardResponseBody(
      period: json['period'] as String,
      leaderboard: (json['leaderboard'] as List)
          .map((item) => LeaderboardEntry.fromJson(item as Map<String, dynamic>))
          .toList(),
      myRank: json['my_rank'] as int?, 
    );
  }
}

class LeaderboardEntry {
  final int rank;
  final StudentModel student;
  final int xp;
  final int level;
  final int streak;

  LeaderboardEntry({
    required this.rank,
    required this.student,
    required this.xp,
    required this.level,
    required this.streak,
  });

  factory LeaderboardEntry.fromJson(Map<String, dynamic> json) {
    return LeaderboardEntry(
      rank: json['rank'] as int,
      student: StudentModel.fromJson(json['student'] as Map<String, dynamic>),
      xp: json['xp'] as int,
      level: json['level'] as int,
      streak: json['streak'] as int,
    );
  }
}

class StudentModel {
  final int id;
  final String name;
  final String? avatar;

  StudentModel({required this.id, required this.name, this.avatar});

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      id: json['id'] as int,
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
    );
  }
}