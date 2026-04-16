
import 'package:depi_notes_app/feature/notes/data/models/note_model.dart';
import 'package:depi_notes_app/feature/notes/presentation/views/widgets/notes_list_item.dart';
import 'package:flutter/material.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List<NoteModel> notes = const [
    NoteModel(
      title: "Meeting Notes",
      subTitle:
          "The quick brown fox jumps over the lazy dog. This is a sample note content to demonstrate how the text will be truncated after two lines.",
    ),
    NoteModel(
      title: "Grocery List",
      subTitle:
          "This is another example of note content. It's slightly shorter than the previous one but still long enough to be truncated.",
    ),
    NoteModel(
      title: "Quick Ideas",
      subTitle:
          "Short note content. This note has a very brief content to show how it looks when the text doesn't need truncation.",
    ),
    NoteModel(
      title: "Project Updates",
      subTitle:
          "This note has a bit more content, but it's still within the two-line limit. It's just enough to fill the space without being cut off.",
    ),
    NoteModel(
      title: "Travel Plans",
      subTitle:
          "Another long note content example. This one is designed to be truncated, showing only the first two lines of the text.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => NotesListItem(noteModel: notes[index]),
      separatorBuilder: (context, index) => SizedBox(height: 8),
      itemCount: notes.length,
    );
  }
}

