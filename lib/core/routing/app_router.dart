import 'package:depi_notes_app/feature/auth/presentation/view/login_view.dart';
import 'package:depi_notes_app/feature/auth/presentation/view/sign_up_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kSignUp = '/SignUp';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => LoginView()),
      GoRoute(path: kSignUp, builder: (context, state) => SignUpView()),
    ],
  );
}
