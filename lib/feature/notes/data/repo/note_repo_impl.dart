import 'package:dartz/dartz.dart';
import 'package:depi_notes_app/core/errors/failure.dart';
import 'package:depi_notes_app/feature/notes/data/models/note_model.dart';
import 'package:depi_notes_app/feature/notes/data/source/note_firebase_service.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/domain/repo/note_repo.dart';

class NoteRepoImpl implements NoteRepo {
  final NoteFirebaseService fireBaseService;

  NoteRepoImpl(this.fireBaseService);
  @override
  Future<Either<Failure, void>> addNote(NoteEntity note) async {
    final model = note.toNoteModel();
    return await fireBaseService.addNote(model);
  }

  @override
  Future<Either<Failure, void>> deleteNote(String id) async {
    return await fireBaseService.deleteNote(id);
  }

  @override
  Future<Either<Failure, NoteEntity>> getNoteById(String id) async {
    return await fireBaseService.getNoteById(id);
  }

  @override
  Future<Either<Failure, List<NoteEntity>>> getNotes() async {
    return await fireBaseService.getNotes();
  }
}
