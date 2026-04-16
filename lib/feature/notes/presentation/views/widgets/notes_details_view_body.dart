
import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:depi_notes_app/feature/notes/data/models/note_model.dart';
import 'package:flutter/material.dart';

class NotesDetailsViewBody extends StatelessWidget {
  const NotesDetailsViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(noteModel.title, style: AppStyles.kBold24),
            SizedBox(height: 16),
            Text(noteModel.subTitle, style: AppStyles.kRegular16),
            SizedBox(height: 16),
            Text(
              "Created At: 07/26/2024 14:30",
              style: AppStyles.kBold16.copyWith(color: AppColors.kHintprimary),
            ),
          ],
        ),
      ),
    );
  }
}
