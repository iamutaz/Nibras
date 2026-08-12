import 'package:flutter/material.dart';

class NotesInVideo extends StatelessWidget {
  const NotesInVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Notes',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}