part of 'notes_cubit.dart';

@immutable
sealed class GetNotesState {}

final class GetNotesInitial extends GetNotesState {}

final class GetNotesLoading extends GetNotesState {}

final class GetNotesFailure extends GetNotesState {
  final String errMessage;

  GetNotesFailure({required this.errMessage});
}

final class GetNotesSuccess extends GetNotesState {
  final List<NoteEntity> notes;

  GetNotesSuccess({required this.notes});
}
