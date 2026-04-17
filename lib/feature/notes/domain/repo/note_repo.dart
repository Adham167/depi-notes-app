import 'package:dartz/dartz.dart';
import 'package:depi_notes_app/core/errors/failure.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';

abstract class NoteRepo {

  Future<Either<Failure, List<NoteEntity>>> getNotes();
  Future<Either<Failure, void>> addNote(NoteEntity note);
  Future<Either<Failure, void>> deleteNote(String id);
  Future<Either<Failure, NoteEntity>> getNoteById(String id);
}
