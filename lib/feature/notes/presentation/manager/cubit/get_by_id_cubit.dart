import 'package:bloc/bloc.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/get_note_by_id.dart';
import 'package:meta/meta.dart';

part 'get_by_id_state.dart';

class GetByIdCubit extends Cubit<GetByIdState> {
  final GetNoteByIdUseCase getNoteByIdUseCase;
  GetByIdCubit({required this.getNoteByIdUseCase}) : super(GetByIdInitial());
  Future<void> getById(String id) async {
    emit(GetByIdLoading());
    final result = await getNoteByIdUseCase.getNoteById(id);
    result.fold(
      (error) => emit(GetByIdFailure(errMessage: error.message)),
      (data) => emit(GetByIdSuccess(noteEntity: data)),
    );
  }
}
