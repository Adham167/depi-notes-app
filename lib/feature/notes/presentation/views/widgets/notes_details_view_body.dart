import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:depi_notes_app/feature/notes/data/models/note_model.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:flutter/material.dart';

class NotesDetailsViewBody extends StatelessWidget {
  const NotesDetailsViewBody({super.key, required this.noteEntity});
  final NoteEntity noteEntity;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(noteEntity.title, style: AppStyles.kBold24),
            SizedBox(height: 16),
            Text(noteEntity.content, style: AppStyles.kRegular16),
            SizedBox(height: 16),
            Text(
              noteEntity.createdAt.toString(),
              style: AppStyles.kBold16.copyWith(color: AppColors.kHintprimary),
            ),
          ],
        ),
      ),
    );
  }
}
