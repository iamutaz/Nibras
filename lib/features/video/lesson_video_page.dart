import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nibras/features/notes/pages/notes_in_video.dart';
import 'package:nibras/features/video/data/helpers/lesson_video_player.dart';
import 'package:nibras/features/video/data/repo/lesson_progress_repo.dart';
import 'package:video_player/video_player.dart';

class LessonVideoPage extends StatefulWidget {
  final String videoUrl;
  final String lessonTitle;
  final int lessonId;
  final int? startPositionSeconds;

  const LessonVideoPage({
    super.key,
    required this.videoUrl,
    required this.lessonTitle,
    required this.lessonId,
    this.startPositionSeconds,
  });

  @override
  State<LessonVideoPage> createState() => _LessonVideoPageState();
}

class _LessonVideoPageState extends State<LessonVideoPage> {
  late final VideoPlayerController _videoController;

  final LessonProgressRepo _progressRepository =
      LessonProgressRepo();

  bool _isLoading = true;
  bool _isError = false;

  bool _isFullscreen = false;
  bool _hasSentComplete = false;
  bool _wasPlaying = false;

  int _lastSavedPositionSeconds = 0;

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

      await _seekToStartPosition();

      await _videoController.play();

      if (!mounted) return;

      setState(() {
        _isLoading = false;
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

    final durationSeconds =
        _videoController.value.duration.inSeconds;

    final safePosition = min(
      startPosition,
      durationSeconds,
    );

    await _videoController.seekTo(
      Duration(seconds: safePosition),
    );

    _lastSavedPositionSeconds = safePosition;
  }

  void _videoListener() {
    if (!_videoController.value.isInitialized) {
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
  }

  Future<void> _saveProgress() async {
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
    if (_hasSentComplete) {
      return;
    }

    _hasSentComplete = true;

    try {
      final durationSeconds =
          _videoController.value.duration.inSeconds;

      await _progressRepository.saveVideoProgress(
        lessonId: widget.lessonId,
        positionSeconds: max(
          _lastSavedPositionSeconds,
          durationSeconds,
        ),
      );

      await _progressRepository.completeLesson(
        lessonId: widget.lessonId,
      );
    } catch (_) {
      _hasSentComplete = false;
    }
  }

  Future<void> _enterFullscreen() async {
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
    );

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
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

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
        backgroundColor:
            _isFullscreen ? Colors.black : Colors.white,
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

                actions: [
                  IconButton(
                    onPressed: () {
                      // TODO: More options
                    },
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.black,
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
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_isError) {
      return const Center(
        child: Text(
          'Error loading video',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      );
    }

    if (_isFullscreen) {
      return Center(
        child: LessonVideoPlayer(
          controller: _videoController,
          onFullscreen: _toggleFullscreen,
        ),
      );
    }

    return Column(
      children: [
        LessonVideoPlayer(
          controller: _videoController,
          onFullscreen: _toggleFullscreen,
        ),

        Expanded(
          child: NotesInVideo(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    unawaited(_saveProgress());

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    _videoController.removeListener(_videoListener);
    _videoController.dispose();

    super.dispose();
  }
}