import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/presentation/views/widgets/notes_details_view_body.dart';
import 'package:flutter/material.dart';

class NotesDetailsView extends StatelessWidget {
  const NotesDetailsView({super.key, required this.noteEntity});
  final NoteEntity noteEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackGround,
      appBar: AppBar(
        backgroundColor: AppColors.kBackGround,
        centerTitle: true,
        title: Text("Note Details", style: AppStyles.kBold24),
      ),
      body: NotesDetailsViewBody(noteEntity: noteEntity),
    );
  }
}
