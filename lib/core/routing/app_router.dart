import 'package:depi_notes_app/feature/auth/presentation/view/login_view.dart';
import 'package:depi_notes_app/feature/auth/presentation/view/sign_up_view.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/presentation/views/create_note_view.dart';
import 'package:depi_notes_app/feature/notes/presentation/views/notes_details_view.dart';
import 'package:depi_notes_app/feature/notes/presentation/views/notes_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kSignUp = '/SignUp';
  static const kLoginView = '/LoginView';
  static const kCreateNoteView = '/CreateNoteView';
  static const kNotesView = '/NewsView';
  static const kNotesDetailsView = '/NewsDetailsView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => CreateNoteView()),
      GoRoute(path: kLoginView, builder: (context, state) => LoginView()),
      GoRoute(path: kSignUp, builder: (context, state) => SignUpView()),
      GoRoute(path: kNotesView, builder: (context, state) => NotesView()),
      GoRoute(
        path: kNotesDetailsView,

        builder: (context, state) {
          final noteEntity = state.extra as NoteEntity;
          return NotesDetailsView(noteEntity: noteEntity);
        },
      ),
      GoRoute(
        path: kCreateNoteView,
        builder: (context, state) => CreateNoteView(),
      ),
    ],
  );
}
