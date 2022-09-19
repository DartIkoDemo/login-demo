import 'package:go_router/go_router.dart';
import 'package:login_demo/core/ui/special_widgets/bloc_providers.dart';
import 'package:login_demo/features/authentication/logic/authentication_bloc/authentication_bloc.dart';
import 'package:login_demo/features/authentication/logic/login_form_cubit/login_form_cubit.dart';
import 'package:login_demo/features/authentication/presentation/create_account_screen.dart';
import 'package:login_demo/features/authentication/presentation/login_screen.dart';
import 'package:login_demo/features/home/fail_screen.dart';
import 'package:login_demo/features/home/home_screen.dart';

class GoRouterFactory {
  static const _rootPath = '/';

  static GoRouter createRouter(AuthenticationBloc bloc) {
    return GoRouter(
      refreshListenable: GoRouterRefreshStream(bloc.stream.where(
        (state) => state.maybeMap(
          loading: (_) => false,
          orElse: () => true,
        ),
      )),
      routes: [
        GoRoute(
          path: _rootPath,
          builder: (_, __) => const HomeScreen(),
        ),
        GoRoute(
          path: LoginScreen.path,
          builder: (_, __) =>
              const BlocProvider1<LoginFormCubit>(child: LoginScreen()),
        ),
        GoRoute(
          path: FailScreen.path,
          builder: (_, __) => const FailScreen(),
        ),
        GoRoute(
          path: CreateAccountScreen.path,
          builder: (_, __) =>
              const BlocProvider1<LoginFormCubit>(child: CreateAccountScreen()),
        ),
      ],
      redirect: (state) => bloc.state.maybeMap(
          fail: (_) => state.subloc == FailScreen.path ? null : FailScreen.path,
          orElse: () {
            const loginLoc = LoginScreen.path;
            final loggingIn = state.subloc == loginLoc;
            const createAccountLoc = CreateAccountScreen.path;
            final creatingAccount = state.subloc == createAccountLoc;
            final loggedIn = bloc.state.isLoggedIn;
            if (!loggedIn && !loggingIn && !creatingAccount) return loginLoc;
            if (loggedIn && (loggingIn || creatingAccount)) return _rootPath;
            return null;
          }),
      debugLogDiagnostics: true,
    );
  }
}
