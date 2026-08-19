import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/quiz/data/cubit/enroll_quiz_cubit.dart';
import 'package:nibras/features/quiz/data/cubit/enroll_quiz_state.dart';
import 'package:nibras/features/quiz/data/cubit/submit_quiz_cubit.dart';
import 'package:nibras/features/quiz/data/cubit/submit_quiz_state.dart';
import 'package:nibras/features/quiz/data/model/enroll_quiz_request_body.dart';
import 'package:nibras/features/quiz/data/model/submit_quiz_request_body.dart';
import 'package:nibras/features/quiz/quiz_result_page.dart';
import 'package:nibras/features/quiz/widgets/quiz_option_item.dart';

class QuizPage extends StatefulWidget {
  final int quizID;

  const QuizPage({super.key, required this.quizID});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final Map<int, int> _selectedAnswers = {};
  final PageController _pageController = PageController();
  Timer? _timer;
  int _remainingSeconds = 0;
  int _attemptId = 0;
  bool _isSubmitting = false;

  @override
  void initState() {
    super.initState();
    context.read<EnrollQuizCubit>().enrollQuiz(
      EnrollQuizRequestBody(quizID: widget.quizID),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startTimer(int totalSeconds) {
    _timer?.cancel();
    _remainingSeconds = totalSeconds;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      if (_remainingSeconds <= 1) {
        timer.cancel();
        _submitQuiz(forceSubmit: true);
        return;
      }

      setState(() {
        _remainingSeconds--;
      });
    });
  }

  String _formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return '$minutes:$secs';
  }

  void _submitQuiz({bool forceSubmit = false}) {
    if (_isSubmitting || _attemptId == 0) return;

    final answers = _selectedAnswers.entries
        .map(
          (entry) => QuizAnswerRequest(
            questionId: entry.key,
            selectedOptionId: entry.value,
          ),
        )
        .toList();

    if (answers.isEmpty && !forceSubmit) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select at least one option.')),
      );
      return;
    }

    setState(() {
      _isSubmitting = true;
    });

    _timer?.cancel();

    context.read<SubmitQuizCubit>().submitQuiz(
      SubmitQuizRequestBody(attemptID: _attemptId, answers: answers),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        elevation: 0,
        leading: SizedBox.shrink(),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  _formatTime(_remainingSeconds),
                  style: TextStyles.font14greyregular,
                ),
              ),
            ),
          ),
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<SubmitQuizCubit, SubmitQuizState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {},
                success: (data) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => QuizResultPage(result: data),
                    ),
                  );
                },
                failure: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(error)),
                  );
                  setState(() {
                    _isSubmitting = false;
                  });
                },
              );
            },
          ),
        ],
        child: BlocBuilder<EnrollQuizCubit, EnrollQuizState>(
          builder: (context, state) {
            if (state is EnrollQuizLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is EnrollQuizSuccess) {
              final responseBody = state.data;
              final questions = responseBody.data.questions;

              if (_attemptId == 0 && responseBody.data.attempt.id != 0) {
                _attemptId = responseBody.data.attempt.id;
                _startTimer(responseBody.data.timeLimitSeconds);
              }

              if (questions.isEmpty) {
                return const Center(child: Text('No questions available.'));
              }

              return PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final question = questions[index];
                  final questionId = question.id;
                  final isLastQuestion = index == questions.length - 1;

                  return Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Question ${index + 1} of ${questions.length}',
                            style: TextStyles.font14greyregular,
                          ),
                        ),
                        const SizedBox(height: 32),
                        Text(
                          question.type == 'mcq'
                              ? 'Multiple choice'
                              : 'True / False',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          question.text,
                          style: TextStyles.font16authblackregular,
                        ),
                        const SizedBox(height: 32),
                        Expanded(
                          child: ListView.builder(
                            itemCount: question.options.length,
                            itemBuilder: (context, optionIndex) {
                              final option = question.options[optionIndex];
                              final isSelected =
                                  _selectedAnswers[questionId] == option.id;

                              return QuizOptionItem(
                                text: option.text,
                                isSelected: isSelected,
                                onTap: () {
                                  setState(() {
                                    _selectedAnswers[questionId] = option.id;
                                  });
                                },
                              );
                            },
                          ),
                        ),
                        AppTextButton(
                          onpressed: () {
                            if (isLastQuestion) {
                              _submitQuiz();
                              return;
                            }
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          textButton: isLastQuestion ? 'Submit' : 'Next',
                          textStyle: TextStyles.font16authblackbold,
                        ),
                      ],
                    ),
                  );
                },
              );
            }

            if (state is EnrollQuizFailure) {
              return Padding(
                padding:   EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Center(
                  child: Text(state.error, style: const TextStyle(color: Colors.red)),
                ),
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
