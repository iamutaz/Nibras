import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/DI/injection.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/features/notes/data/cubit/get_notes_by_id_cubit.dart';
import 'package:nibras/features/notes/data/cubit/get_notes_by_id_state.dart';
import 'package:nibras/features/notes/data/models/get_notes_by_id_request_body.dart';
import 'package:nibras/features/notes/data/models/get_notes_by_id_response_body.dart';

class NotesByIdLesson extends StatefulWidget {
  final int lessonId;

  const NotesByIdLesson({
    super.key,
    required this.lessonId,
  });

  @override
  State<NotesByIdLesson> createState() => _NotesByIdLessonState();
}

class _NotesByIdLessonState extends State<NotesByIdLesson> {
  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  @override
  void didUpdateWidget(covariant NotesByIdLesson oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.lessonId != widget.lessonId) {
      _loadNotes();
    }
  }

  void _loadNotes() {
    context.read<GetNotesByIdCubit>().emitCourseById(
      GetNotesByIdRequestBody(lessonID: widget.lessonId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<GetNotesByIdCubit, GetNotesByIdState>(
            builder: (context, state) {
              return state.when(
                getnotesbyidinitial: () =>
                    const Center(child: CircularProgressIndicator()),
                getnotesbyidloading: () =>
                    const Center(child: CircularProgressIndicator()),
                getnotesbyidsuccess: (response) {
                  final notes = (response as GetNotesByIdResponseBody).data;

                  if (notes.isEmpty) {
                    return Center(
                      child: Text(
                        'No notes for this lesson yet.',
                        style: TextStyles.font14authblackregular,
                      ),
                    );
                  }

                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(20.0),
                    itemCount: notes.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      final note = notes[index];
                      return _buildNoteCard(
                        unitTitle: 'Lesson ${note.lessonId}',
                        time: _formatTime(note.timestampSeconds),
                        noteText: note.content,
                      );
                    },
                  );
                },
                getnotesbyidfailure: (error) => Center(
                  child: Text(error, style: const TextStyle(color: Colors.red)),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0.h, horizontal: 16.w),
            child: AppTextButton(
              onpressed: () {},
              textButton: "Add note",
              textStyle: TextStyles.font16authblackbold,
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(int seconds) {
    final duration = Duration(seconds: seconds);
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final secs = duration.inSeconds.remainder(60);

    final hh = hours.toString().padLeft(2, '0');
    final mm = minutes.toString().padLeft(2, '0');
    final ss = secs.toString().padLeft(2, '0');

    return hours > 0 ? '$hh:$mm:$ss' : '$mm:$ss';
  }

  Widget _buildNoteCard({
    required String unitTitle,
    required String time,
    required String noteText,
  }) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(unitTitle, style: TextStyles.font14authblackbold),
          const SizedBox(height: 8),
          Text(time, style: TextStyles.font12lightgreymedium),
          const SizedBox(height: 12),
          Text(
            noteText,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF333333),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
