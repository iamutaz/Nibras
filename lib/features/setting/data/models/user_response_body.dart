class UserResponseBody {
  final int id;
  final String name;
  final String email;
  final String role;
  final bool isInstructor;
  final String? avatar;
  final bool emailVerified;
  final bool onboardingCompleted;
  final String? createdAt;

  UserResponseBody({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.isInstructor,
    this.avatar,
    required this.emailVerified,
    required this.onboardingCompleted,
    this.createdAt,
  });

  factory UserResponseBody.fromJson(Map<String, dynamic> json) {
    return UserResponseBody(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      isInstructor: json['is_instructor'] as bool,
      avatar: json['avatar'] as String?,
      emailVerified: json['email_verified'] as bool,
      onboardingCompleted: json['onboarding_completed'] as bool,
      createdAt: json['created_at'] as String?,
    );
  }
}