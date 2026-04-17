import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/presentation/views/widgets/notes_list_item.dart';
import 'package:flutter/material.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key, required this.notes});
  final List<NoteEntity> notes;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => NotesListItem(noteEntity: notes[index]),
      separatorBuilder: (context, index) => SizedBox(height: 8),
      itemCount: notes.length,
    );
  }
}
