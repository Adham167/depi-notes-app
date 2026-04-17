part of 'get_by_id_cubit.dart';

@immutable
sealed class GetByIdState {}

final class GetByIdInitial extends GetByIdState {}

final class GetByIdLoading extends GetByIdState {}

final class GetByIdSuccess extends GetByIdState {
  final NoteEntity noteEntity;

  GetByIdSuccess({required this.noteEntity});
}

final class GetByIdFailure extends GetByIdState {
  final String errMessage;

  GetByIdFailure({required this.errMessage});
}
