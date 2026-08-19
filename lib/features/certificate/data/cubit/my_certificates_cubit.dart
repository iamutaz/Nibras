import 'package:bloc/bloc.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/certificate/data/cubit/my_certificates_state.dart';
import 'package:nibras/features/certificate/data/repo/certificate_repo.dart';

class MyCertificatesCubit extends Cubit<MyCertificatesState> {
  CertificateRepo _repo;
  MyCertificatesCubit(this._repo)
    : super(MyCertificatesState.mycertificatesinitial());

  void generateCertificate() async {
    emit(MyCertificatesState.mycertificatesloading());
    var response = await _repo.getMyCertificates();
    response.when(
      success: (data) {
        print("succes in cubit");

        emit(MyCertificatesState.mycertificatessuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          MyCertificatesState.mycertificatesfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
