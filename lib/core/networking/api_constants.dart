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
  static const String enrollQuiz='quizzes/attempt';
  static const String submitQuiz='quiz-attempts/submit';
  static const String lessonQuizzes='lessons/quizzes';
  static const String inVideoAnswer='quizzes/in-video-answer';
  static const String reportCourse='reports/courses';
  static const String validateCoupon='coupons/validate';
  static const String craetepaymentIntent='payments/intent';
  static const String confirmPayment='payments/confirm';
  static const String creategift="gifts/intent";
  static const String confirmgift="gifts/confirm";
  static const String claimgift="gifts/claim";
  static const String giftsent="gifts/sent";
  static const String uploadAvatar = "upload/avatar";
  static const String leaderboard = 'leaderboard';
  static const String me = 'auth/me';
  static const String streak = 'streak';
  static const String xpStats = 'xp/stats';
<<<<<<< HEAD
  static const String myCertificate='certificates/my';
  static const String generateCertificate='certificates/generate';
  static const String  notifications= 'notifications';
  static const String readallnotification='notifications/read-all';
=======
  // static const String addtowishlist = 'wishlist';
  // static const String getmywishlist = 'wishlist/my';
  static const String showmyprogression = 'courses/progress';
  static const String progressLessonComplete = 'progress/lesson/complete';
  static const String progressVideo = 'progress/video';
  static const String getnotesbyid='notes/lesson';
  static const String addnote='notes';
  static const String enrollQuiz='quizzes/attempt';
  static const String submitQuiz='quiz-attempts/submit';
  static const String lessonQuizzes='lessons/quizzes';
  static const String inVideoAnswer='quizzes/in-video-answer';
  static const String reportCourse='reports/courses';
  static const String validateCoupon='coupons/validate';
  static const String craetepaymentIntent='payments/intent';
  static const String confirmPayment='payments/confirm';
  static const String ratingStats = 'courses/rating-stats';
  static const String reviews = 'reviews';
  static const String quizResults = 'courses/quiz-results';

>>>>>>> 88de412774bc88364818669c92f2efafe4c444de
}
