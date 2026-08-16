import 'package:dio/dio.dart';
import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/features/Home/data/model/home_response_body.dart';
import 'package:nibras/features/details/data/models/course_details_request_body.dart';
import 'package:nibras/features/details/data/models/course_details_response_body.dart';
import 'package:nibras/features/details/data/models/enrollment_request_body.dart';
import 'package:nibras/features/details/data/models/enrollment_response_body.dart';

import 'package:nibras/features/enrollments/data/model/enrollments_response_body.dart';
import 'package:nibras/features/login/data/model/login_request_body.dart';
import 'package:nibras/features/login/data/model/login_response_body.dart';
import 'package:nibras/features/notes/data/models/add_note_request_body.dart';
import 'package:nibras/features/notes/data/models/add_note_responst_body.dart';
import 'package:nibras/features/notes/data/models/get_notes_by_id_request_body.dart';
import 'package:nibras/features/notes/data/models/get_notes_by_id_response_body.dart';
import 'package:nibras/features/progression/data/model/progression_request_body.dart';
import 'package:nibras/features/progression/data/model/progression_response_body.dart';
import 'package:nibras/features/quiz/data/model/enroll_quiz_request_body.dart';
import 'package:nibras/features/quiz/data/model/enroll_quiz_response_body.dart';
import 'package:nibras/features/quiz/data/model/in_video_answer_request_body.dart';
import 'package:nibras/features/quiz/data/model/in_video_answer_response_body.dart';
import 'package:nibras/features/quiz/data/model/lesson_quizzes_response_body.dart';
import 'package:nibras/features/quiz/data/model/submit_quiz_request_body.dart';
import 'package:nibras/features/quiz/data/model/submit_quiz_response_body.dart';
import 'package:nibras/features/report/data/model/report_request_body.dart';
import 'package:nibras/features/report/data/model/report_response_body.dart';
import 'package:nibras/features/reviews/model/rating_response_body.dart';
import 'package:nibras/features/reviews/model/review_request_body.dart';
import 'package:nibras/features/reviews/model/review_response_body.dart';
import 'package:nibras/features/setting/data/models/logout/logout_response_body.dart';
import 'package:nibras/features/setting/data/models/forgetpassword/forget_password_request_body.dart';
import 'package:nibras/features/setting/data/models/forgetpassword/forget_password_response_body.dart';
import 'package:nibras/features/signup/data/model/signup_request_body.dart';
import 'package:nibras/features/signup/data/model/signup_response_body.dart';
import 'package:nibras/features/wishlist/data/model/add_to_wishlist_request_body.dart';
import 'package:nibras/features/wishlist/data/model/add_to_wishlist_response_model.dart';
import 'package:nibras/features/wishlist/data/model/my_wishlist_response_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseurl)
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;

  //authintaction----------------

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginrequestbody);

  @POST(ApiConstants.signup)
  Future<SignupResponseBody> signup(
    @Body() SignupRequestBody signuprequestbody,
  );

  @POST(ApiConstants.logout)
  Future<LogoutResponseBody> logout();

  @GET(ApiConstants.home)
  Future<HomeResponseBody> getCourses();

  @POST(ApiConstants.forgetpass)
  Future<ForgetPasswordResponstBody> forgetpassword(
    @Body() ForgetPasswordRequestBody forgetpassrequestbody,
  );
  @POST(ApiConstants.verfycode)
  Future<ForgetPasswordResponstBody> verfycode(
    @Body() ForgetPasswordRequestBody forgetpassrequestbody,
  );
  @POST(ApiConstants.resetpass)
  Future<ForgetPasswordResponstBody> resetpassword(
    @Body() ForgetPasswordRequestBody forgetpassrequestbody,
  );
  @GET(ApiConstants.getcoursebyid)
  Future<CourseDetailsResponseBody> getCoursebyid(
    @Body() CourseDetailsRequestBody courseDetailsRequestBody,
  );

  @GET(ApiConstants.getreviewsbycoursebyid)
  Future<ReviewResponseBody> getreviewsbycoursebyid(
    @Body() ReviewRequestBody reviewrequestbody,
  );

  @GET(ApiConstants.getratingdetailed)
  Future<RatingResponseBody> getratingdetailed(
    @Body() ReviewRequestBody reviewrequestbody,
  );
  @GET(ApiConstants.getrecommendedcourses)
  Future<HomeResponseBody> getRecommendedCourses();

  @GET(ApiConstants.getmyenrollments)
  Future<EnrollmentsResponseModel> getMyEnrollments();

  @POST(ApiConstants.enrollcourse)
  Future<EnrollmentResponseBody> enrollCourse(
    @Body() EnrollmentRequestBody request,
  );

  @POST(ApiConstants.addtowishlist)
  Future<AddToWishlistResponseModel> addToWishlist(
    @Body() AddToWishlistRequestBody request,
  );
  @GET(ApiConstants.getmywishlist)
  Future<MyWishlistResponseBody> getMyWishlist();
  @GET(ApiConstants.showmyprogression)
  Future<ProgressionResponseBody> showMyProgression(
    @Body() ProgressionRequestBody request,
  );

  @GET(ApiConstants.getnotesbyid)
  Future<GetNotesByIdResponseBody> getNotesByIdLesson(
    @Body() GetNotesByIdRequestBody request,
  );
  @POST(ApiConstants.addnote)
  Future<AddNoteResponstBody> addNote(@Body() AddNoteRequestBody request);

  @POST(ApiConstants.enrollQuiz)
  Future<EnrollQuizResponseBody> enrollQuiz(
    @Body() EnrollQuizRequestBody request,
  );

  @POST(ApiConstants.submitQuiz)
  Future<SubmitQuizResponseBody> submitQuiz(
    @Body() SubmitQuizRequestBody request,
  );

  @GET(ApiConstants.lessonQuizzes)
  Future<LessonQuizzesResponseBody> getLessonQuizzes(
    @Query('lesson_id') int lessonId,
  );

  @POST(ApiConstants.inVideoAnswer)
  Future<InVideoAnswerResponseBody> submitInVideoAnswer(
    @Body() InVideoAnswerRequestBody request,
  );

  @POST(ApiConstants.reportCourse)
  Future<ReportResponseBody> reportCourse(@Body() ReportRequestBody request);
}
