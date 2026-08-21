import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/DI/injection.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/networking/dio_factory.dart';
import 'package:nibras/core/networking/web_services.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/notes/data/cubit/add_note_cubit.dart';
import 'package:nibras/features/notes/pages/notes_in_video.dart';
import 'package:nibras/features/quiz/data/model/in_video_answer_request_body.dart';
import 'package:nibras/features/quiz/data/model/lesson_quizzes_response_body.dart';
import 'package:nibras/features/quiz/data/repo/quiz_repo.dart';
import 'package:nibras/features/quiz/helpers/interactive_qustion_sheet.dart';
import 'package:nibras/features/report/course_report_sheet.dart';
import 'package:nibras/features/report/data/cubit/reports_cubit.dart';
import 'package:nibras/features/report/data/model/report_request_body.dart';
import 'package:nibras/features/report/reports_bloc_listiner.dart';
import 'package:nibras/features/video/data/helpers/lesson_video_player.dart';
import 'package:nibras/features/video/data/repo/lesson_progress_repo.dart';
import 'package:video_player/video_player.dart';

// ignore_for_file: use_build_context_synchronously

class LessonVideoPage extends StatefulWidget {
  final String videoUrl;
  final String lessonTitle;
  final int lessonId;
  final int? startPositionSeconds;
  final bool isPreview;

  const LessonVideoPage({
    super.key,
    required this.videoUrl,
    required this.lessonTitle,
    required this.lessonId,
    this.startPositionSeconds,
    this.isPreview = false,
  });

  @override
  State<LessonVideoPage> createState() => _LessonVideoPageState();
}

class _LessonVideoPageState extends State<LessonVideoPage> {
  late final VideoPlayerController _videoController;
  Key _playerKey = UniqueKey();

  final LessonProgressRepo _progressRepository = LessonProgressRepo();

  bool _isLoading = true;
  bool _isError = false;

  bool _isFullscreen = false;
  bool _hasSentComplete = false;
  bool _wasPlaying = false;

  int _lastSavedPositionSeconds = 0;

  final QuizRepo _quizRepo = QuizRepo(WebServices(DioFactory.getDio()));
  List<LessonQuizData> _inVideoQuizzes = [];
  final Set<int> _shownQuizIds = {};

  @override
  void initState() {
    super.initState();

    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    try {
      _videoController = VideoPlayerController.networkUrl(
        Uri.parse(widget.videoUrl),
      );

      await _videoController.initialize();
      _videoController.addListener(_videoListener);

      if (!widget.isPreview) {
        unawaited(_fetchInVideoQuizzes());
      }
      await _seekToStartPosition();
      await _videoController.play();

      if (!mounted) return;

      setState(() {
        _isLoading = false;
      });

      // إجبار remount كامل للـ VideoPlayer بعد أول فريم
      // (نفس تأثير تبديل الفل سكرين اللي عم يصلح المشكلة عندك)
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        setState(() {
          _playerKey = UniqueKey();
        });
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _isError = true;
      });
    }
  }

  Future<void> _seekToStartPosition() async {
    final startPosition = widget.startPositionSeconds;

    if (startPosition == null || startPosition <= 0) {
      return;
    }

    final durationSeconds = _videoController.value.duration.inSeconds;

    final safePosition = min(startPosition, durationSeconds);

    await _videoController.seekTo(Duration(seconds: safePosition));

    _lastSavedPositionSeconds = safePosition;
  }

  void _videoListener() {
    if (!_videoController.value.isInitialized) {
      return;
    }

    if (widget.isPreview) {
      final value = _videoController.value;
      _wasPlaying = value.isPlaying;
      return;
    }

    final value = _videoController.value;

    final currentPosition = value.position.inSeconds;
    final durationSeconds = value.duration.inSeconds;

    if (currentPosition > _lastSavedPositionSeconds) {
      _lastSavedPositionSeconds = currentPosition;
    }

    final isPlaying = value.isPlaying;

    // Video paused
    if (_wasPlaying && !isPlaying) {
      unawaited(_saveProgress());
    }

    // Video completed
    if (durationSeconds > 0 &&
        currentPosition >= durationSeconds - 1 &&
        !_hasSentComplete) {
      unawaited(_completeLesson());
    }

    _wasPlaying = isPlaying;

    // check for quizzes to show at this second
    if (_inVideoQuizzes.isNotEmpty) {
      for (final quiz in _inVideoQuizzes) {
        try {
          final int quizId = quiz.id;
          if (_shownQuizIds.contains(quizId)) continue;

          if (currentPosition >= quiz.triggerSecond) {
            _shownQuizIds.add(quizId);
            try {
              _videoController.pause();
            } catch (_) {}
            unawaited(_showInVideoQuiz(quiz));
          }
        } catch (_) {
          // ignore malformed quiz entries
        }
      }
    }
  }

  Future<void> _saveProgress() async {
    if (widget.isPreview) {
      return;
    }

    try {
      await _progressRepository.saveVideoProgress(
        lessonId: widget.lessonId,
        positionSeconds: _lastSavedPositionSeconds,
      );
    } catch (_) {
      // Ignore progress errors.
    }
  }

  Future<void> _completeLesson() async {
    if (widget.isPreview || _hasSentComplete) {
      return;
    }

    _hasSentComplete = true;

    try {
      final durationSeconds = _videoController.value.duration.inSeconds;

      await _progressRepository.saveVideoProgress(
        lessonId: widget.lessonId,
        positionSeconds: max(_lastSavedPositionSeconds, durationSeconds),
      );

      await _progressRepository.completeLesson(lessonId: widget.lessonId);
    } catch (_) {
      _hasSentComplete = false;
    }
  }

  Future<void> _enterFullscreen() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    if (!mounted) return;

    setState(() {
      _isFullscreen = true;
    });
  }

  Future<void> _exitFullscreen() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    if (!mounted) return;

    setState(() {
      _isFullscreen = false;
    });
  }

  Future<void> _toggleFullscreen() async {
    if (_isFullscreen) {
      await _exitFullscreen();
    } else {
      await _enterFullscreen();
    }
  }

  Future<void> _goBack() async {
    await _saveProgress();

    if (!mounted) return;

    Navigator.pop(context);
  }

  Future<void> _fetchInVideoQuizzes() async {
    try {
      final result = await _quizRepo.getLessonQuizzes(widget.lessonId);

      result.when(
        success: (response) {
          debugPrint('Lesson quizzes fetched: ${response.data.length}');
          if (mounted) {
            setState(() {
              _inVideoQuizzes = response.data;
            });
          } else {
            _inVideoQuizzes = response.data;
          }
        },
        failure: (error) {
          debugPrint(
            'Failed to fetch in-video quizzes: ${error.apiErrorModel.message}',
          );
        },
      );
    } catch (e, st) {
      debugPrint('Failed to fetch in-video quizzes: $e');
      debugPrint('$st');
    }
  }

  Future<void> _showInVideoQuiz(LessonQuizData quiz) async {
    try {
      if (_isFullscreen) {
        await _exitFullscreen();
      }

      await _videoController.pause();

      final questions = quiz.questions;
      if (questions.isEmpty) {
        await _videoController.play();
        return;
      }

      final currentContext = context;
      if (!mounted) return;

      for (final question in questions) {
        final int questionId = question.id;
        final String questionText =
            (question.question != null && question.question!.trim().isNotEmpty)
            ? question.question!
            : 'Question';
        final opts = <Map<String, dynamic>>[];
        for (final option in question.options) {
          opts.add({
            'id': option.id,
            'text': option.text,
            'is_correct': option.isCorrect,
          });
        }

        await InteractiveQuestionSheet.show(
          currentContext,
          quizId: quiz.id,
          questionId: questionId,
          questionText: questionText,
          options: opts,
          onSubmit: (int selectedOptionId) async {
            try {
              final result = await _quizRepo.submitInVideoAnswer(
                InVideoAnswerRequestBody(
                  quizId: quiz.id,
                  questionId: questionId,
                  selectedOptionId: selectedOptionId,
                ),
              );

              return result.when(
                success: (response) {
                  debugPrint('Submit result: ${response.data.isCorrect}');
                  return {
                    'success': response.success,
                    'message': response.message,
                    'data': {
                      'is_correct': response.data.isCorrect,
                      'correct_option': response.data.correctOption == null
                          ? null
                          : {
                              'id': response.data.correctOption!.id,
                              'text': response.data.correctOption!.text,
                            },
                      'explanation': response.data.explanation,
                    },
                  };
                },
                failure: (error) {
                  debugPrint('Submit failure: ${error.apiErrorModel.message}');
                  return {
                    'success': false,
                    'message': error.apiErrorModel.message ?? 'Network error',
                    'data': {'is_correct': false},
                  };
                },
              );
            } catch (e, st) {
              debugPrint('Submit exception: $e');
              debugPrint('$st');
              return {
                'success': false,
                'message': 'Network error',
                'data': {'is_correct': false},
              };
            }
          },
        );
      }

      // resume playback
      await _videoController.play();
    } catch (_) {
      try {
        await _videoController.play();
      } catch (_) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !_isFullscreen,
      onPopInvokedWithResult: (didPop, result) async {
        if (!didPop && _isFullscreen) {
          await _exitFullscreen();
        }
      },
      child: Scaffold(
        backgroundColor: _isFullscreen ? Colors.black : Colors.white,
        appBar: _isFullscreen
            ? null
            : AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: true,

                leading: IconButton(
                  onPressed: _goBack,
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 20,
                  ),
                ),

                title: Text(
                  widget.lessonTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                actions: widget.isPreview
                    ? null
                    : [
                        BlocProvider(
                          create: (_) => getIt<ReportsCubit>(),
                          child: Builder(
                            builder: (context) {
                              return Stack(
                                children: [
                                  PopupMenuButton<String>(
                                    icon: const Icon(
                                      Icons.more_vert,
                                      color: Colors.black,
                                    ),
                                    onSelected: (value) {
                                      if (value == 'report') {
                                        final reportsCubit = context
                                            .read<ReportsCubit>();

                                        CourseReportSheet.show(
                                          context,
                                          onSubmit: (reason, details) async {
                                            await reportsCubit.report(
                                              ReportRequestBody(
                                                courseId: widget.lessonId,
                                                reason: reason,
                                                description: details,
                                              ),
                                            );
                                          },
                                        );
                                      }
                                    },
                                    itemBuilder: (context) => [
                                      PopupMenuItem(
                                        value: 'report',
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.report_problem,
                                              color: Colors.red,
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              'Report',
                                              style: TextStyles.font12redmiduem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  const ReportsBlocListener(),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
              ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_isError) {
      return const Center(
        child: Text(
          'Error loading video',
          style: TextStyle(color: Colors.black),
        ),
      );
    }

    final player = LessonVideoPlayer(
      key: _playerKey,
      controller: _videoController,
      onFullscreen: _toggleFullscreen,
      isPreview: widget.isPreview,
    );

    if (_isFullscreen) {
      return Center(child: player);
    }

    if (widget.isPreview) {
      return player;
    }

    return Column(
      children: [
        player,
        Expanded(
          child: BlocProvider(
            create: (context) => getIt<AddNoteCubit>(),
            child: NotesInVideo(lessonId: widget.lessonId),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    unawaited(_saveProgress());

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    _videoController.removeListener(_videoListener);
    _videoController.dispose();

    super.dispose();
  }
}
