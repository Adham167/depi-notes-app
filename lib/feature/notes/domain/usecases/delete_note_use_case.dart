import 'package:dartz/dartz.dart';
import 'package:depi_notes_app/core/errors/failure.dart';
import 'package:depi_notes_app/feature/notes/domain/repo/note_repo.dart';

class DeleteNoteUseCase {
  final NoteRepo repo;

  DeleteNoteUseCase(this.repo);
  Future<Either<Failure, void>> deletNote(String id) async {
    return await repo.deleteNote(id);
  }
}
