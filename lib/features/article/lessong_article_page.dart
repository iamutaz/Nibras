import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nibras/features/video/data/repo/lesson_progress_repo.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LessonArticlePage extends StatefulWidget {
  final String pdfUrl;
  final String lessonTitle;
  final int lessonId;

  const LessonArticlePage({
    super.key,
    required this.pdfUrl,
    required this.lessonTitle,
    required this.lessonId,
  });

  @override
  State<LessonArticlePage> createState() => _LessonArticlePageState();
}

class _LessonArticlePageState extends State<LessonArticlePage> {
  late final WebViewController _webViewController;
  final LessonProgressRepo _progressRepository = LessonProgressRepo();

  bool _isLoading = true;
  bool _hasSentComplete = false;

  @override
  void initState() {
    super.initState();
    _initWebView();
  }

  Future<void> _completeLesson() async {
    if (_hasSentComplete) {
      return;
    }

    _hasSentComplete = true;

    try {
      await _progressRepository.completeLesson(lessonId: widget.lessonId);
    } catch (_) {
      _hasSentComplete = false;
    }
  }

  void _initWebView() {
    // نستخدم Google Docs Viewer لعرض ملف الـ PDF جوا الـ WebView
    final previewUrl =
        'https://docs.google.com/gview?embedded=true&url=${Uri.encodeComponent(widget.pdfUrl)}';

    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) {
            if (mounted) setState(() => _isLoading = true);
          },
          onPageFinished: (_) {
            if (mounted) setState(() => _isLoading = false);
          },
        ),
      )
      ..loadRequest(Uri.parse(previewUrl));
  }

  Future<void> _downloadPdf() async {
    final uri = Uri.parse(widget.pdfUrl);

    try {
      final launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );

      if (!launched && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('تعذر فتح الملف')),
        );
      }
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('تعذر فتح الملف')),
      );
    }
  }

  @override
  void dispose() {
    unawaited(_completeLesson());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
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
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                WebViewWidget(controller: _webViewController),
                if (_isLoading)
                  const Center(child: CircularProgressIndicator()),
              ],
            ),
          ),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _downloadPdf,
                  icon: const Icon(Icons.download),
                  label: const Text('Download PDF'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}