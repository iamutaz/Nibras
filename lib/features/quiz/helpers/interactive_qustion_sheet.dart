import 'package:flutter/material.dart';
typedef InVideoSubmit = Future<Map<String, dynamic>> Function(int selectedOptionId);

class InteractiveQuestionSheet {
  /// Shows an interactive question sheet for a single question.
  ///
  /// Parameters:
  /// - `quizId`, `questionId` are used only for context/debugging.
  /// - `questionText` is the text shown to the user.
  /// - `options` is a list of maps with keys `id` and `text`.
  /// - `onSubmit` is called when the user confirms an answer and should
  ///   return the parsed JSON response from the server.
  static Future<void> show(
    BuildContext context, {
    required int quizId,
    required int questionId,
    required String questionText,
    required List<Map<String, dynamic>> options,
    required InVideoSubmit onSubmit,
  }) async {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // مهم للسماح بالتحكم في الارتفاع
      backgroundColor: Colors.transparent, // لجعل الحواف العلوية دائرية بحرية
      builder: (BuildContext context) {
        int? selectedOptionIndex;
        bool isConfirmed = false;
        bool isSubmitting = false;
        Map<String, dynamic>? submitResponse;
        
        // هنا نستخدم StatefulBuilder لتحديث حالة الاختيارات داخل الـ BottomSheet فقط
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // يأخذ مساحة المحتوى فقط
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // --- رأس النافذة (العنوان وزر الإغلاق) ---
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Interactive Question',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close, color: Colors.grey),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    // --- نص السؤال ---
                    Text(
                      questionText,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // --- خيارات ديناميكية ---
                    for (var i = 0; i < options.length; i++) ...[
                      _buildOption(
                        text: options[i]['text']?.toString() ?? '',
                        isSelected: selectedOptionIndex == i,
                        onTap: () {
                          if (!isConfirmed && !isSubmitting) {
                            setState(() => selectedOptionIndex = i);
                          }
                        },
                      ),
                      const SizedBox(height: 12),
                    ],

                    // --- رسالة النتيجة (تظهر فقط بعد التأكيد) ---
                    if (isConfirmed || isSubmitting) ...[
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: (submitResponse?['data']?['is_correct'] == true)
                              ? Colors.green.shade50
                              : Colors.red.shade50,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: isSubmitting
                            ? const Center(child: CircularProgressIndicator())
                            : Text(
                                submitResponse != null
                                  ? (submitResponse?['message']?.toString() ?? '')
                                  : 'Submitting...'.toString(),
                                style: TextStyle(
                                    color: (submitResponse?['data']?['is_correct'] == true)
                                      ? Colors.green.shade700
                                      : Colors.red.shade700,
                                  fontSize: 14,
                                ),
                              ),
                      ),
                    ],

                    const SizedBox(height: 24),

                    // --- زر التأكيد ---
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC7F464), // اللون الأخضر الفاتح من التصميم
                          foregroundColor: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: selectedOptionIndex != null && !isSubmitting
                            ? () async {
                                setState(() {
                                  isSubmitting = true;
                                });

                                // call submit callback with selected option id
                                try {
                                  final selectedOption = options[selectedOptionIndex!];
                                  final int selectedOptionId = (selectedOption['id'] is int)
                                      ? selectedOption['id'] as int
                                      : int.parse(selectedOption['id'].toString());

                                  final response = await onSubmit(selectedOptionId);

                                  setState(() {
                                    isSubmitting = false;
                                    isConfirmed = true;
                                    submitResponse = response;
                                  });
                                } catch (_) {
                                  setState(() {
                                    isSubmitting = false;
                                    isConfirmed = true;
                                    submitResponse = {
                                      'success': false,
                                      'message': 'Submission failed',
                                      'data': {'is_correct': false}
                                    };
                                  });
                                }
                              }
                            : null, // تعطيل الزر إذا لم يتم اختيار إجابة
                        child: const Text(
                          'Confirm The Answer',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    if (isConfirmed)
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: const BorderSide(color: Colors.black12),
                            ),
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Continue'),
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  // --- ودجت مخصص لتصميم الخيار (Radio Button مخصص) ---
  static Widget _buildOption({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF3E8FF) : Colors.white, // لون بنفسجي فاتح عند التحديد
          border: Border.all(
            color: isSelected ? const Color(0xFF8B5CF6) : Colors.grey.shade300,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // أيقونة الراديو
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? const Color(0xFF8B5CF6) : Colors.grey.shade400,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Color(0xFF8B5CF6),
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 12),
            // نص الخيار
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  color: isSelected ? const Color(0xFF8B5CF6) : Colors.black87,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}