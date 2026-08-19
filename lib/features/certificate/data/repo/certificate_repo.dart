import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/features/certificate/data/model/generate_certificate/generate_certificate_request_body.dart';
import 'package:nibras/features/certificate/data/model/generate_certificate/generate_certificate_response_body.dart';
import 'package:nibras/features/certificate/data/model/my_certificates/my_certificate_response_body.dart';

class CertificateRepo {
  WebServices _services;
  CertificateRepo(this._services);

  Future<ApiResult<GenerateCertificateResponseBody>> generateCertificate(
    GenerateCertificateRequestBody request,
  ) async {
    try {
      var response = await _services.generateCertificate(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<MyCertificateResponseBody>> getMyCertificates() async {
    try {
      var response = await _services.myCertificate();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
