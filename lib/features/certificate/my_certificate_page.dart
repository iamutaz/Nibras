import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/certificate/data/cubit/my_certificates_cubit.dart';
import 'package:nibras/features/certificate/data/cubit/my_certificates_state.dart';
import 'package:nibras/features/certificate/data/model/generate_certificate/generate_certificate_response_body.dart';
import 'package:nibras/features/certificate/data/model/my_certificates/my_certificate_response_body.dart';
import 'package:nibras/features/certificate/widget/certificate_card..dart';

class MyCertificatePage extends StatefulWidget {
  const MyCertificatePage({super.key});

  @override
  State<MyCertificatePage> createState() => _MyCertificatePageState();
}

class _MyCertificatePageState extends State<MyCertificatePage> {
  @override
  void initState() {
    super.initState();
    // Trigger the API call when the page is initialized
    context.read<MyCertificatesCubit>().generateCertificate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('My Certificates', style: TextStyles.font16authblackbold),
      ),
      body: BlocBuilder<MyCertificatesCubit, MyCertificatesState>(
        builder: (context, state) {
          return state.maybeWhen(
            mycertificatesloading: () => const Center(
              child: CircularProgressIndicator(color: Colors.black),
            ),
            mycertificatesfailure: (error) => Center(
              child: Text(error, style: const TextStyle(color: Colors.red)),
            ),
            mycertificatessuccess: (data) {
              final response = data as MyCertificateResponseBody;
              final certificates = response.data;

              // Handle empty list case as requested
              if (certificates.isEmpty) {
                return const Center(
                  child: Text(
                    'You have no certificates',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                );
              }

              return ListView.separated(
                padding: const EdgeInsets.all(20.0),
                itemCount: certificates.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemBuilder: (context, index) {
                  return CertificateCard(certificate: certificates[index]);
                },
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
