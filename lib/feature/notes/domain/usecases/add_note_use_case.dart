import 'package:dartz/dartz.dart';
import 'package:depi_notes_app/core/errors/failure.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/domain/repo/note_repo.dart';

class AddNoteUseCase {
  final NoteRepo repo;

  AddNoteUseCase(this.repo);
  Future<Either<Failure, void>> addNotes(NoteEntity note) async {
    return await repo.addNote(note);
  }
}
