import 'package:flutter/material.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/quiz/data/model/submit_quiz_response_body.dart';

class QuizResultPage extends StatelessWidget {
  final SubmitQuizResponseBody result;

  const QuizResultPage({super.key, required this.result});

  void _goBackToProgression(BuildContext context) {
    int count = 0;
    Navigator.of(context).popUntil((_) => count++ >= 2);
  }

  @override
  Widget build(BuildContext context) {
    final data = result.data;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: SizedBox.shrink(),
        title: Text('Quiz Result', style: TextStyles.font16authblackbold),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.mainBlue.withValues(alpha: 0.12),
                      AppColors.mainYellow.withValues(alpha: 0.12),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.passed ? 'Passed' : 'Failed',
                      style: TextStyles.font16authblackbold.copyWith(
                        color: data.passed ? Colors.green : Colors.red,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${data.score}%',
                      style: TextStyles.font20blackbold.copyWith(fontSize: 32),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Correct answers: ${data.correctAnswers} / ${data.totalQuestions}',
                      style: TextStyles.font14greyregular,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text('Attempt Summary', style: TextStyles.font16authblackbold),
              const SizedBox(height: 12),
              _SummaryRow(
                label: 'Total questions',
                value: '${data.totalQuestions}',
              ),
              _SummaryRow(
                label: 'Correct answers',
                value: '${data.correctAnswers}',
              ),
              _SummaryRow(label: 'Unanswered', value: '${data.unanswered}'),
              _SummaryRow(
                label: 'Result',
                value: data.passed ? 'Passed' : 'Failed',
              ),
              const SizedBox(height: 24),
              Text('Detailed Review', style: TextStyles.font16authblackbold),
              const SizedBox(height: 12),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.answers.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final answer = data.answers[index];

                  return Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: answer.isCorrect
                            ? Colors.green.shade200
                            : Colors.red.shade200,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          answer.question,
                          style: TextStyles.font16authblackbold,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Your answer: ${answer.yourAnswer}',
                          style: TextStyles.font14greyregular,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Correct answer: ${answer.correctAnswer}',
                          style: TextStyles.font14greyregular,
                        ),
                        const SizedBox(height: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: answer.isCorrect
                                ? Colors.green.withValues(alpha: 0.12)
                                : Colors.red.withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            answer.isCorrect ? 'Correct' : 'Incorrect',
                            style: TextStyle(
                              color: answer.isCorrect
                                  ? Colors.green
                                  : Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          answer.explanation,
                          style: TextStyles.font14greyregular,
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
              AppTextButton(
                onpressed: () => _goBackToProgression(context),
                textButton: 'Back to Course Page',
                textStyle: TextStyles.font16authblackbold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;

  const _SummaryRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyles.font14greyregular),
          Text(value, style: TextStyles.font16authblackbold),
        ],
      ),
    );
  }
}
