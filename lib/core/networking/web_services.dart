
import 'package:dio/dio.dart';
import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/features/login/data/model/login_request_body.dart';
import 'package:nibras/features/login/data/model/login_response_body.dart' show LoginResponseBody;
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'web_services.g.dart';

@RestApi(baseUrl:ApiConstants.baseurl)
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;

  //authintaction----------------

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginrequestbody);
}