import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LessonVideoPlayer extends StatefulWidget {
  final VideoPlayerController controller;
  final VoidCallback onFullscreen;

  const LessonVideoPlayer({
    super.key,
    required this.controller,
    required this.onFullscreen,
  });

  @override
  State<LessonVideoPlayer> createState() => _LessonVideoPlayerState();
}

class _LessonVideoPlayerState extends State<LessonVideoPlayer> {
  bool _showControls = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_videoListener);
  }

  void _videoListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_videoListener);
    super.dispose();
  }

  void _togglePlayPause() {
    if (widget.controller.value.isPlaying) {
      widget.controller.pause();
    } else {
      widget.controller.play();
    }
    setState(() {});
  }

  void _seekForward() {
    final currentPosition = widget.controller.value.position;
    final duration = widget.controller.value.duration;

    var newPosition = currentPosition + const Duration(seconds: 10);
    if (newPosition > duration) {
      newPosition = duration;
    }

    widget.controller.seekTo(newPosition);
  }

  void _seekBackward() {
    final currentPosition = widget.controller.value.position;

    var newPosition = currentPosition - const Duration(seconds: 10);
    if (newPosition < Duration.zero) {
      newPosition = Duration.zero;
    }

    widget.controller.seekTo(newPosition);
  }

  void _toggleControls() {
    setState(() {
      _showControls = !_showControls;
    });
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final videoValue = widget.controller.value;

    if (!videoValue.isInitialized) {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: ColoredBox(
          color: Colors.black,
          child: Center(
            child: CircularProgressIndicator(color: Color(0xFFB6D936)),
          ),
        ),
      );
    }

    final screenWidth = MediaQuery.sizeOf(context).width;
    final videoAspectRatio = videoValue.aspectRatio > 0
        ? videoValue.aspectRatio
        : 16 / 9;
    final videoHeight = screenWidth / videoAspectRatio;

    return SizedBox(
      width: double.infinity,
      height: videoHeight,
      child: GestureDetector(
        onTap: _toggleControls,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // =========================
            // VIDEO
            // =========================
            AspectRatio(
              aspectRatio: videoAspectRatio,
              child: VideoPlayer(widget.controller),
            ),

            // =========================
            // CONTROLS
            // =========================
            if (_showControls)
              Positioned.fill(
                child: Container(
                  color: Colors.black45,
                  child: Stack(
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: _seekBackward,
                              icon: const Icon(
                                Icons.replay_10,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),

                            const SizedBox(width: 20),

                            GestureDetector(
                              onTap: _togglePlayPause,
                              child: Container(
                                width: 65,
                                height: 65,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  videoValue.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  color: Colors.black,
                                  size: 35,
                                ),
                              ),
                            ),

                            const SizedBox(width: 20),

                            IconButton(
                              onPressed: _seekForward,
                              icon: const Icon(
                                Icons.forward_10,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Bottom controls
                      Positioned(
                        left: 16,
                        right: 16,
                        bottom: 8,
                        child: Column(
                          children: [
                            VideoProgressIndicator(
                              widget.controller,
                              allowScrubbing: true,
                              padding: EdgeInsets.zero,
                              colors: const VideoProgressColors(
                                playedColor: Color(0xFFB6D936),
                                bufferedColor: Colors.white54,
                                backgroundColor: Colors.white30,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  _formatDuration(videoValue.position),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                const Text(
                                  ' / ',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  _formatDuration(videoValue.duration),
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: widget.onFullscreen,
                                  child: const Icon(
                                    Icons.fullscreen,
                                    color: Colors.white,
                                    size: 26,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
