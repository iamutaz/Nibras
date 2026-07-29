class SearchResponseBody {
  final int id;
  final String title;
  final String? slug;
  final String? description;
  final String? thumbnail;
  final String? promoVideo;
  final String? level;
  final String? language;
  final String? status;
  final bool? isFree;
  final String? price;
  final bool? hasCertificate;
  final int? totalDuration;
  final int? totalLessons;
  final int? totalEnrollments;
  final String? averageRating;
  final int? reviewsCount;
  final List<String>? whatYouLearn;
  final List<String>? requirements;
  final InstructorModel? instructor;
  final CategoryModel? category;
  final String? submittedAt;
  final String? publishedAt;
  final String? createdAt;

  SearchResponseBody({
    required this.id,
    required this.title,
    this.slug,
    this.description,
    this.thumbnail,
    this.promoVideo,
    this.level,
    this.language,
    this.status,
    this.isFree,
    this.price,
    this.hasCertificate,
    this.totalDuration,
    this.totalLessons,
    this.totalEnrollments,
    this.averageRating,
    this.reviewsCount,
    this.whatYouLearn,
    this.requirements,
    this.instructor,
    this.category,
    this.submittedAt,
    this.publishedAt,
    this.createdAt,
  });

  factory SearchResponseBody.fromJson(Map<String, dynamic> json) {
    return SearchResponseBody(
      id: json['id'] as int,
      title: json['title'] as String,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] as String?,
      promoVideo: json['promo_video'] as String?,
      level: json['level'] as String?,
      language: json['language'] as String?,
      status: json['status'] as String?,
      isFree: json['is_free'] is int ? (json['is_free'] == 1) : json['is_free'] as bool?,
      price: json['price']?.toString(),
      hasCertificate: json['has_certificate'] is int ? (json['has_certificate'] == 1) : json['has_certificate'] as bool?,
      totalDuration: json['total_duration'] as int?,
      totalLessons: json['total_lessons'] as int?,
      totalEnrollments: json['total_enrollments'] as int?,
      averageRating: json['average_rating']?.toString(),
      reviewsCount: json['reviews_count'] as int?,
      whatYouLearn: (json['what_you_learn'] as List?)?.map((e) => e as String).toList(),
      requirements: (json['requirements'] as List?)?.map((e) => e as String).toList(),
      instructor: json['instructor'] != null
          ? InstructorModel.fromJson(json['instructor'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? CategoryModel.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      submittedAt: json['submitted_at'] as String?,
      publishedAt: json['published_at'] as String?,
      createdAt: json['created_at'] as String?,
    );
  }
}


class InstructorModel {
  final int id;
  final String name;
  final String? email;
  final String? role;
  final bool? isInstructor;
  final String? avatar;
  final bool? emailVerified;
  final bool? onboardingCompleted;
  final String? createdAt;

  InstructorModel({
    required this.id,
    required this.name,
    this.email,
    this.role,
    this.isInstructor,
    this.avatar,
    this.emailVerified,
    this.onboardingCompleted,
    this.createdAt,
  });

  factory InstructorModel.fromJson(Map<String, dynamic> json) {
    return InstructorModel(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String?,
      role: json['role'] as String?,
      isInstructor: json['is_instructor'] is int ? (json['is_instructor'] == 1) : json['is_instructor'] as bool?,
      avatar: json['avatar'] as String?,
      emailVerified: json['email_verified'] is int ? (json['email_verified'] == 1) : json['email_verified'] as bool?,
      onboardingCompleted: json['onboarding_completed'] is int ? (json['onboarding_completed'] == 1) : json['onboarding_completed'] as bool?,
      createdAt: json['created_at'] as String?,
    );
  }
}

class CategoryModel {
  final int id;
  final String name;
  final String? slug;

  CategoryModel({
    required this.id,
    required this.name,
    this.slug,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String?,
    );
  }
}