
import 'package:dio/dio.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/certificate/data/model/my_certificates/my_certificate_response_body.dart';

class CertificateCard extends StatefulWidget {
  final CertificateData certificate;

  const CertificateCard({super.key, required this.certificate});

  @override
  State<CertificateCard> createState() => _CertificateCardState();
}

class _CertificateCardState extends State<CertificateCard> {
  bool _isDownloading = false;

  Future<void> _downloadCertificate() async {
    if (_isDownloading) return;

    setState(() {
      _isDownloading = true;
    });

    try {
      final response = await Dio().get<List<int>>(
        widget.certificate.pdfUrl,
        options: Options(responseType: ResponseType.bytes),
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = received / total;

            debugPrint(
              'Download progress: ${(progress * 100).toStringAsFixed(0)}%',
            );
          }
        },
      );

      if (response.data == null) {
        throw Exception('Failed to download certificate');
      }

      final Uint8List pdfBytes = Uint8List.fromList(response.data!);

      final fileName = 'certificate_${widget.certificate.verificationCode}';

      await FileSaver.instance.saveFile(
        name: fileName,
        bytes: pdfBytes,
        ext: 'pdf',
        mimeType: MimeType.pdf,
      );

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Certificate downloaded successfully')),
      );
    } catch (e) {
      debugPrint('Certificate download error: $e');

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to download certificate')),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isDownloading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 96.h,
                height: 64.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  'assets/images/certificate.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.certificate.course.title,
                      style: TextStyles.font14authblackregular,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Release Date: ${widget.certificate.issuedAt}',
                      style: TextStyles.font12lightgreymedium,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFF9F9F9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Certification Number (UUID)',
                  style: TextStyles.font12lightgreymedium,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.certificate.verificationCode,
                        style: TextStyles.font12authblackbold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(
                          ClipboardData(
                            text: widget.certificate.verificationCode,
                          ),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Copied to clipboard!')),
                        );
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.star, color: Color(0xFFF2994A), size: 16),
                          SizedBox(width: 4),
                          Text(
                            'Copy',
                            style: TextStyle(
                              color: Color(0xFFF2994A),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.only(left: 130.0.w),
            child: AppTextButton(
              textButton: _isDownloading ? 'Downloading...' : 'Download PDF',
              textStyle: TextStyles.font14authblackmid,
              onpressed: _isDownloading ? null : _downloadCertificate,
            ),
          ),
        ],
      ),
    );
  }
}
