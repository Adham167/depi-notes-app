import 'package:depi_notes_app/core/routing/app_router.dart';
import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/presentation/manager/delete_note_cubit/delete_note_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NotesListItem extends StatelessWidget {
  const NotesListItem({super.key, required this.noteEntity});
  final NoteEntity noteEntity;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => GoRouter.of(
        context,
      ).push(AppRouter.kNotesDetailsView, extra: noteEntity),
      title: Text(noteEntity.title, style: AppStyles.kRegular16),
      subtitle: Text(
        noteEntity.content,
        style: AppStyles.kSubTitle14.copyWith(color: AppColors.kHintprimary),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
        onPressed: () {
          BlocProvider.of<DeleteNoteCubit>(context).deleteNote(noteEntity.id);
        },
        icon: Icon(Icons.delete_outline),
      ),
    );
  }
}
