import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/features/certificate/data/cubit/generate_certificate_cubit.dart';
import 'package:nibras/features/certificate/data/cubit/generate_certificate_state.dart';

class GenerateCertificateBlocListener extends StatelessWidget {
  const GenerateCertificateBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GenerateCertificateCubit, GenerateCertificateState>(
      listener: (context, state) {
        state.whenOrNull(
          generatecertificateloading: () {
            return CircularProgressIndicator();
          },

          generatecertificatesuccess: (data) {
            context.pop();

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Certificate generated successfully!'),
                backgroundColor: Colors.green,
              ),
            );
          },

          generatecertificatefailure: (error) {
            setupErrorState(context, error);
          },
        );
      },

      listenWhen: (previous, current) =>
          current is GenerateCertificateLoading ||
          current is GenerateCertificateSuccess ||
          current is GenerateCertificateFailure,

      child: const SizedBox.shrink(),
    );
  }
}
