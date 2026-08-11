import 'dart:math';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:nibras/core/networking/api_constants.dart';
import 'package:nibras/core/networking/dio_factory.dart';

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
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _isError = false;
  bool _hasSentComplete = false;
  bool _wasPlaying = false;
  int _lastSavedPositionSeconds = 0;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    try {
      _videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(widget.videoUrl),
      );
      await _videoPlayerController.initialize();
      _videoPlayerController.addListener(_videoListener);

      if (widget.startPositionSeconds != null &&
          widget.startPositionSeconds! > 0) {
        final durationSeconds = _videoPlayerController.value.duration.inSeconds;
        final seekSeconds = min(widget.startPositionSeconds!, durationSeconds);
        await _videoPlayerController.seekTo(Duration(seconds: seekSeconds));
        _lastSavedPositionSeconds = seekSeconds;
      }

      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: _videoPlayerController.value.aspectRatio,
        autoPlay: true,
        looping: false,
        allowFullScreen: true,
        materialProgressColors: ChewieProgressColors(
          playedColor: Colors.purple,
          handleColor: Colors.purple,
          backgroundColor: Colors.grey,
          bufferedColor: Colors.purple.shade100,
        ),
      );
      setState(() {});
    } catch (_) {
      setState(() => _isError = true);
    }
  }

  void _videoListener() {
    if (!_videoPlayerController.value.isInitialized) return;

    final position = _videoPlayerController.value.position;
    final duration = _videoPlayerController.value.duration;
    final currentPosition = position.inSeconds;

    // تحديث أعلى ثانية وصل إليها الطالب
    if (currentPosition > _lastSavedPositionSeconds) {
      _lastSavedPositionSeconds = currentPosition;
    }

    final isPlaying = _videoPlayerController.value.isPlaying;

    // 1. اكتشاف الإيقاف المؤقت (User Paused Video)
    if (_wasPlaying && !isPlaying) {
      _sendVideoProgress(_lastSavedPositionSeconds);
    }

    // 2. اكتشاف وصول الفيديو للنهاية (Lesson Completed)
    if (duration.inSeconds > 0 &&
        currentPosition >= duration.inSeconds - 1 &&
        !_hasSentComplete) {
      _sendLessonComplete();
    }

    _wasPlaying = isPlaying;
  }

  Future<void> _sendVideoProgress(int seconds) async {
    try {
      await DioFactory.getDio().post(
        '${ApiConstants.baseurl}${ApiConstants.progressVideo}',
        data: {'lesson_id': widget.lessonId, 'position_seconds': seconds},
      );
    } catch (_) {
      // ignore save errors
    }
  }

  Future<void> _sendLessonComplete() async {
    if (_hasSentComplete) return;
    _hasSentComplete = true;

    try {
      final durationSeconds = _videoPlayerController.value.duration.inSeconds;

      // إرسال آخر نقطة تقدم للسيرفر أولاً حتى يحسب الـ 80%+ بنجاح
      await _sendVideoProgress(max(_lastSavedPositionSeconds, durationSeconds));

      // ثم إرسال طلب إكمال الدرس
      await DioFactory.getDio().post(
        '${ApiConstants.baseurl}${ApiConstants.progressLessonComplete}',
        data: {'lesson_id': widget.lessonId},
      );
    } catch (_) {
      _hasSentComplete = false; // إعادة الضبط في حال فشل الطلب
    }
  }

  @override
  void dispose() {
    if (!_hasSentComplete && _videoPlayerController.value.isInitialized) {
      _sendVideoProgress(_lastSavedPositionSeconds);
    }
    _videoPlayerController.removeListener(_videoListener);
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.lessonTitle,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Center(
        child: _isError
            ? const Text(
                'Error loading video',
                style: TextStyle(color: Colors.white),
              )
            : _chewieController != null &&
                  _chewieController!.videoPlayerController.value.isInitialized
            ? Chewie(controller: _chewieController!)
            : const CircularProgressIndicator(color: Colors.purple),
      ),
    );
  }
}
