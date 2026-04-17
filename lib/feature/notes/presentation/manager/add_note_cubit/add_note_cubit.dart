import 'package:bloc/bloc.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/add_note_use_case.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  final AddNoteUseCase addNoteUseCase;
  AddNoteCubit({required this.addNoteUseCase}) : super(AddNoteInitial());
  Future<void> addNote(NoteEntity note) async {
    emit(AddNoteLoading());
    final returnedData = await addNoteUseCase.addNotes(note);
    returnedData.fold(
      (error) => emit(AddNoteFailure(errMessage: error.message)),
      (data) => emit(AddNoteSuccess()),
    );
  }
}
