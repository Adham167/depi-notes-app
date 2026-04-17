import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/presentation/views/widgets/notes_list_view.dart';
import 'package:flutter/material.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key, required this.notes});
  final List<NoteEntity> notes;
  @override
  Widget build(BuildContext context) {
    return NotesListView(notes: notes,);
  }
}
