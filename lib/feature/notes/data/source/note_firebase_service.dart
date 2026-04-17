import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:depi_notes_app/core/errors/failure.dart';
import 'package:depi_notes_app/feature/notes/data/models/note_model.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';

abstract class NoteFirebaseService {
  Future<Either<Failure, List<NoteEntity>>> getNotes();
  Future<Either<Failure, void>> addNote(NoteModel note);
  Future<Either<Failure, void>> deleteNote(String id);
  Future<Either<Failure, NoteEntity>> getNoteById(String id);
}

class NoteFirebaseServiceImpl implements NoteFirebaseService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<Either<Failure, void>> addNote(NoteModel note) async {
    try {
      final docRef = firestore.collection('Notes').doc();
      final newNote = note.copyWith(id: docRef.id);
      await docRef.set(newNote.toJson());
      return const Right(null);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteNote(String id) async {
    try {
      await firestore.collection('Notes').doc(id).delete();
      return const Right(null);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, NoteEntity>> getNoteById(String id) async {
    try {
      final doc = await firestore.collection("Notes").doc(id).get();
      final data = doc.data();
      if (data == null) {
        return const Left(Failure("This data is empty"));
      }
      final model = NoteModel.fromJson({"id": doc.id, ...data});
      return Right(model.toNoteEntity());
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NoteEntity>>> getNotes() async {
    try {
      final snapshot = await firestore.collection("Notes").get();
      final notes = snapshot.docs.map((doc) {
        final data = doc.data();
        final model = NoteModel.fromJson({"id": doc.id, ...data});
        return model.toNoteEntity();
      }).toList();

      return Right(notes);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
