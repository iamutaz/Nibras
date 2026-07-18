import 'package:dio/dio.dart';
import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/features/Home/data/model/home_response_body.dart';
import 'package:nibras/features/details/data/models/course_details_request_body.dart';
import 'package:nibras/features/details/data/models/course_details_response_body.dart';
import 'package:nibras/features/login/data/model/login_request_body.dart';
import 'package:nibras/features/login/data/model/login_response_body.dart';
import 'package:nibras/features/reviews/model/rating_response_body.dart';
import 'package:nibras/features/reviews/model/review_request_body.dart';
import 'package:nibras/features/reviews/model/review_response_body.dart';
import 'package:nibras/features/setting/data/models/logout/logout_response_body.dart';
import 'package:nibras/features/setting/data/models/forgetpassword/forget_password_request_body.dart';
import 'package:nibras/features/setting/data/models/forgetpassword/forget_password_response_body.dart';
import 'package:nibras/features/signup/data/model/signup_request_body.dart';
import 'package:nibras/features/signup/data/model/signup_response_body.dart';
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
  Future<CourseDetailsResponseBody> getCoursebyid(@Body() CourseDetailsRequestBody courseDetailsRequestBody);

  @GET(ApiConstants.getreviewsbycoursebyid)
  Future<ReviewResponseBody> getreviewsbycoursebyid(@Body() ReviewRequestBody reviewrequestbody);

  @GET(ApiConstants.getratingdetailed)
  Future<RatingResponseBody> getratingdetailed(@Body() ReviewRequestBody reviewrequestbody);
}
