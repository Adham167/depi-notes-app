
import 'package:depi_notes_app/core/routing/app_router.dart';
import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:depi_notes_app/feature/notes/data/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotesListItem extends StatelessWidget {
  const NotesListItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => GoRouter.of(
        context,
      ).push(AppRouter.kNotesDetailsView, extra: noteModel),
      title: Text(noteModel.title, style: AppStyles.kRegular16),
      subtitle: Text(
        noteModel.subTitle,
        style: AppStyles.kSubTitle14.copyWith(color: AppColors.kHintprimary),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete_outline)),
    );
  }
}