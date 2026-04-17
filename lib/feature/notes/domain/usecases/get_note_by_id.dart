import 'package:dartz/dartz.dart';
import 'package:depi_notes_app/core/errors/failure.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/domain/repo/note_repo.dart';

class GetNoteByIdUseCase {
  final NoteRepo repo;

  GetNoteByIdUseCase(this.repo);
  Future<Either<Failure, NoteEntity>> getNoteById(String id) async {
    return await repo.getNoteById(id);
  }
}
