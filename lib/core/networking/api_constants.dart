import 'dart:core';

class ApiConstants {
  static const String baseurl = "http://10.0.3.2:8000/api/";
  // static const String baseurl = "http://10.0.2.2:8000/api/";

  static const String login = "auth/login";
  static const String signup = "auth/register";
  static const String categories = "categories/";
  static const String logout = "auth/logout";
  static const String home = "courses";
  static const String forgetpass = 'auth/forget-password';
  static const String resetpass = 'auth/reset-password';
  static const String verfycode = 'auth/verify-reset-code';
  static const String getcoursebyid = 'courses/find';
  static const String getreviewsbycoursebyid = 'courses/reviews';
  static const String getratingdetailed = 'courses/rating-stats';
  static const String getrecommendedcourses = 'courses/recommended';
  static const String getmyenrollments = 'enrollments/my';
  static const String enrollcourse = 'enrollments';
  static const String courses = "courses";
  static const String onboardingInterests = "onboarding/interests";
  static const String addtowishlist = 'wishlist';
  static const String getmywishlist = 'wishlist/my';
  static const String showmyprogression = 'courses/progress';
  static const String progressLessonComplete = 'progress/lesson/complete';
  static const String progressVideo = 'progress/video';
  static const String getnotesbyid='notes/lesson';
  static const String addnote='notes';
}
