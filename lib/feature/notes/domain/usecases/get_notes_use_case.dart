import 'package:dartz/dartz.dart';
import 'package:depi_notes_app/core/errors/failure.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/domain/repo/note_repo.dart';

class GetNotesUseCase {
  final NoteRepo repo;

  GetNotesUseCase(this.repo);
  Future<Either<Failure, List<NoteEntity>>> getNotes() async {
    return await repo.getNotes();
  }
}
