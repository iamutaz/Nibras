import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_certificate_state.freezed.dart';

@freezed
class GenerateCertificateState<T> with _$GenerateCertificateState<T> {
  const factory GenerateCertificateState.generatecertificateinitial() =
      _GenerateCertificateInitial;

  const factory GenerateCertificateState.generatecertificateloading() =
      GenerateCertificateLoading;

  const factory GenerateCertificateState.generatecertificatesuccess(T data) =
      GenerateCertificateSuccess;

  const factory GenerateCertificateState.generatecertificatefailure({
    required String error,
  }) = GenerateCertificateFailure;
}
