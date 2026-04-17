import 'package:bloc/bloc.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/get_notes_use_case.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  final GetNotesUseCase getNotesUseCase;
  GetNotesCubit( {required this.getNotesUseCase}) : super(GetNotesInitial());

  Future<void> getNotes() async {
    emit(GetNotesLoading());
    final returnedData = await getNotesUseCase.getNotes();
    returnedData.fold(
      (error) => emit(GetNotesFailure(errMessage: error.message)),
      (data) => emit(GetNotesSuccess(notes: data)),
    );
  }
}
