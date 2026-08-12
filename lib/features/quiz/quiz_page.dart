import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/quiz/data/cubit/enroll_quiz_cubit.dart';
import 'package:nibras/features/quiz/data/cubit/enroll_quiz_state.dart';
import 'package:nibras/features/quiz/data/model/enroll_quiz_response_body.dart';
import 'package:nibras/features/quiz/widgets/quiz_option_item.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // Map لتخزين الإجابات: Key هو رقم السؤال، والـ Value هو رقم الإجابة
  final Map<int, int> _selectedAnswers = {};
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    context.read<EnrollQuizCubit>().enrollQuiz();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Unit 1 Test', //TODO: تخصيص للكويز
          style: TextStyles.font16authblackbold,
        ),
        centerTitle: true,
        actions: [
          // مكان مؤقت للعداد تبع الوقت
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
                child: Text('15:00', style: TextStyles.font14greyregular),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<EnrollQuizCubit, EnrollQuizState>(
          builder: (context, state) {
            if (state is EnrollQuizLoading) {
              return const Center(child: CircularProgressIndicator());
            }
        
            if (state is EnrollQuizSuccess) {
              final responseBody = state.data;
        
              final questions = responseBody.data.questions;
        
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
                          onpressed: () {},
                          textButton: "Next",
                          textStyle: TextStyles.font16authblackbold,
                        ),
                      ],
                    ),
                  );
                },
              );
            }
        
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
