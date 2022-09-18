import 'package:go_router/go_router.dart';
import 'package:login_demo/features/authentication/logic/authentication_bloc/authentication_bloc.dart';
import 'package:login_demo/features/authentication/presentation/login_screen.dart';
import 'package:login_demo/features/home/fail_screen.dart';
import 'package:login_demo/features/home/home_screen.dart';

class GoRouterFactory {
  static const _rootPath = '/';

  static GoRouter createRouter(AuthenticationBloc bloc) {
    return GoRouter(
      refreshListenable: GoRouterRefreshStream(bloc.stream),
      routes: [
        GoRoute(
          path: _rootPath,
          redirect: (state) => HomeScreen.path,
        ),
        GoRoute(
          path: LoginScreen.path,
          builder: (_, __) => const LoginScreen(),
        ),
        GoRoute(
          path: HomeScreen.path,
          builder: (_, __) => const HomeScreen(),
        ),
        GoRoute(
          path: FailScreen.path,
          builder: (_, __) => const FailScreen(),
        ),
      ],
      redirect: (state) {
        final bool loggedIn = bloc.state.isLoggedIn;
        final bool loggingIn = state.subloc == LoginScreen.path;
        if (!loggedIn) return loggingIn ? null : LoginScreen.path;
        if (loggingIn) return _rootPath;
        return null;
      },
    );
  }
}
