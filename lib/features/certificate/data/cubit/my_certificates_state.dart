import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_certificates_state.freezed.dart';

@freezed
class MyCertificatesState<T> with _$MyCertificatesState<T> {
  const factory MyCertificatesState.mycertificatesinitial() =
      _MyCertificatesInitial;

  const factory MyCertificatesState.mycertificatesloading() =
      MyCertificatesLoading;

  const factory MyCertificatesState.mycertificatessuccess(T data) =
      MyCertificatesSuccess;

  const factory MyCertificatesState.mycertificatesfailure({
    required String error,
  }) = MyCertificatesFailure;
}