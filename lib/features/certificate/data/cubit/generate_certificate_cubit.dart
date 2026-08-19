import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/certificate/data/cubit/generate_certificate_state.dart';
import 'package:nibras/features/certificate/data/model/generate_certificate/generate_certificate_request_body.dart';
import 'package:nibras/features/certificate/data/repo/certificate_repo.dart';

class GenerateCertificateCubit extends Cubit<GenerateCertificateState> {
  CertificateRepo _repo;
  GenerateCertificateCubit(this._repo)
    : super(GenerateCertificateState.generatecertificateinitial());

  void generateCertificate(GenerateCertificateRequestBody request) async {
    emit(GenerateCertificateState.generatecertificateinitial());
    var response = await _repo.generateCertificate(request);
    response.when(
      success: (data) {
        print("succes in cubit");

        emit(GenerateCertificateState.generatecertificatesuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          GenerateCertificateState.generatecertificatefailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
