import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/core/widgets/app_text_form_feild.dart';
import 'package:nibras/features/notes/data/cubit/add_note_cubit.dart';
import 'package:nibras/features/notes/data/cubit/add_note_state.dart';
import 'package:nibras/features/notes/data/models/add_note_request_body.dart';

class NotesInVideo extends StatefulWidget {
  final int lessonId;

  const NotesInVideo({super.key, required this.lessonId});

  @override
  State<NotesInVideo> createState() => _NotesInVideoState();
}

class _NotesInVideoState extends State<NotesInVideo> {
  final TextEditingController _timestampController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _timestampController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  Future<void> _addNote() async {
    if (!_formKey.currentState!.validate()) return;

    FocusScope.of(context).unfocus();

    final request = AddNoteRequestBody(
      lessonId: widget.lessonId,
      content: _noteController.text.trim(),
      timestampSeconds: int.parse(_timestampController.text.trim()),
    );

    await context.read<AddNoteCubit>().addNote(request);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddNoteCubit, AddNoteState>(
      listenWhen: (previous, current) =>
          current is AddNoteStateLoading ||
          current is AddNoteStateSuccess ||
          current is AddNoteStateFailure,
      listener: (context, state) {
        if (state is AddNoteStateLoading) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Sending note...')),
          );
          return;
        }

        if (state is AddNoteStateSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Note added successfully')),
          );
          _timestampController.clear();
          _noteController.clear();
          _formKey.currentState?.reset();
          return;
        }

        if (state is AddNoteStateFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error)),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  hintText: 'Timestamp in seconds',
                  textEditingController: _timestampController,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Enter timestamp';
                    }

                    if (int.tryParse(value.trim()) == null) {
                      return 'Enter a valid number';
                    }

                    return null;
                  },
                ),

                SizedBox(height: 12.h),

                AppTextFormField(
                  hintText: 'Write your note...',
                  textEditingController: _noteController,
                  minLines: 5,
                  maxLines: 8,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Enter your note';
                    }

                    return null;
                  },
                ),

                SizedBox(height: 24.h),

                SizedBox(
                  width: double.infinity,
                  child: AppTextButton(
                    onpressed: _addNote,
                    textButton: 'Add Note',
                    textStyle: TextStyles.font16authblackbold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
