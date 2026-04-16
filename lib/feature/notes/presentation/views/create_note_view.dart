import 'package:depi_notes_app/feature/notes/presentation/views/widgets/create_note_view_body.dart';
import 'package:flutter/material.dart';

class CreateNoteView extends StatelessWidget {
  const CreateNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CreateNoteViewBody(),
    );
  }
}