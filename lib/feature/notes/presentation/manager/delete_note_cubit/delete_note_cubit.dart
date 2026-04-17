import 'package:bloc/bloc.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/delete_note_use_case.dart';
import 'package:meta/meta.dart';

part 'delete_note_state.dart';

class DeleteNoteCubit extends Cubit<DeleteNoteState> {
  final DeleteNoteUseCase deleteNoteUseCase;
  DeleteNoteCubit({required this.deleteNoteUseCase})
    : super(DeleteNoteInitial());
  Future<void> deleteNote(String id) async {
    emit(DeleteNoteLoading());
    final result = await deleteNoteUseCase.deletNote(id);
    result.fold(
      (error) => emit(DeleteNoteFailure(errMessage: error.message)),
      (data) => emit(DeleteNoteSuccess()),
    );
  }
}
