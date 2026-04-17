import 'package:depi_notes_app/feature/notes/data/repo/note_repo_impl.dart';
import 'package:depi_notes_app/feature/notes/data/source/note_firebase_service.dart';
import 'package:depi_notes_app/feature/notes/domain/repo/note_repo.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/add_note_use_case.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/delete_note_use_case.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/get_note_by_id.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/get_notes_use_case.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() async {
  //service
  getIt.registerLazySingleton<NoteFirebaseService>(
    () => NoteFirebaseServiceImpl(),
  );
  //repos
  getIt.registerLazySingleton<NoteRepo>(
    () => NoteRepoImpl(getIt<NoteFirebaseService>()),
  );
  //usecases
  getIt.registerLazySingleton(() => GetNoteByIdUseCase(getIt<NoteRepo>()));
  getIt.registerLazySingleton(() => AddNoteUseCase(getIt<NoteRepo>()));
  getIt.registerLazySingleton(() => GetNotesUseCase(getIt<NoteRepo>()));
  getIt.registerLazySingleton(() => DeleteNoteUseCase(getIt<NoteRepo>()));
}
