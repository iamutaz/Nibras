import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart' show TextStyles;
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/report/reports_bloc_listiner.dart';

class CourseReportSheet extends StatefulWidget {
  const CourseReportSheet({super.key, this.onSubmit});

  final Future<void> Function(String reason, String? details)? onSubmit;

  static Future<void> show(
    BuildContext context, {
    Future<void> Function(String reason, String? details)? onSubmit,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => CourseReportSheet(onSubmit: onSubmit),
    );
  }

  @override
  State<CourseReportSheet> createState() => _CourseReportSheetState();
}

class _CourseReportSheetState extends State<CourseReportSheet> {
  String? _selectedReason;

  final TextEditingController _detailsController = TextEditingController();

  final List<String> _reasons = [
    'poor_quality',
    'inappropriate_content',
    'copyright_violation',
    'misleading_information',
    'other',
  ];

  @override
  void dispose() {
    _detailsController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_selectedReason == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a reason for reporting.')),
      );
      return;
    }

    await widget.onSubmit?.call(
      _selectedReason!,
      _detailsController.text.trim().isEmpty
          ? null
          : _detailsController.text.trim(),
    );

    if (mounted) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomInset),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Course Report',
                          style: TextStyles.font16authblackbold,
                        ),
                      ),

                      InkWell(
                        onTap: () => Navigator.pop(context),
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFE2E5EA)),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Icon(
                            Icons.close,
                            color: Color(0xFF697386),
                            size: 26,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 28.h),

                  // Description
                  Text(
                    'This Report Will Be Sent To The\n'
                    'Administration For Review. Please Specify\n'
                    'The Reason For Reporting:',
                    style: TextStyles.font16authblackregular,
                  ),

                  const SizedBox(height: 22),

                  // Reasons
                  ..._reasons.map(
                    (reason) => _ReportReasonTile(
                      title: reason,
                      selected: _selectedReason == reason,
                      onTap: () {
                        setState(() {
                          _selectedReason = reason;
                        });
                      },
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Additional details
                  TextField(
                    controller: _detailsController,
                    maxLines: 4,
                    textInputAction: TextInputAction.newline,
                    decoration: InputDecoration(
                      hintText: 'Additional Details (Optional)',
                      hintStyle: TextStyles.font14greyregular,
                      filled: true,
                      fillColor: const Color(0xFFF9FAFB),
                      contentPadding: const EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Color(0xFFE2E5EA)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Color(0xFFE2E5EA)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Color(0xFF7C3AED)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Submit
                  AppTextButton(
                    onpressed: () {
                      if (_selectedReason != null) {
                        _submit();
                      }
                    },
                    textButton: 'Submit Report',
                    textStyle: TextStyles.font16whitebold,
                    buttoncolor: _selectedReason == null
                        ? Colors.grey.shade300
                        : AppColors.mainBlue,
                  ),
                 ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ReportReasonTile extends StatelessWidget {
  const _ReportReasonTile({
    required this.title,
    required this.selected,
    required this.onTap,
  });

  final String title;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFE1E4E9)),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: selected
                      ? const Color(0xFF7C3AED)
                      : const Color(0xFFD8DCE3),
                  width: 2,
                ),
              ),
              child: selected
                  ? Center(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF7C3AED),
                        ),
                      ),
                    )
                  : null,
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Text(title, style: TextStyles.font14authblackregular),
            ),
          ],
        ),
      ),
    );
  }
}
