import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:login_demo/core/locator.dart';

import 'core/constants.dart';
import 'core/ui/special_widgets/bloc_providers.dart';
import 'features/authentication/logic/authentication_bloc/authentication_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initGetItComponents();
  runApp(getIt<LoginDemo>());
}

class LoginDemo extends StatelessWidget {
  const LoginDemo({
    super.key,
    required GoRouter router,
    required ThemeData themeMaterial,
    required CupertinoThemeData themeCupertino,
  })  : _router = router,
        _themeMaterial = themeMaterial,
        _themeCupertino = themeCupertino;

  final GoRouter _router;
  final ThemeData _themeMaterial;
  final CupertinoThemeData _themeCupertino;

  @override
  Widget build(BuildContext context) => BlocProvider1<AuthenticationBloc>(
        lazy: false,
        reuseExisting: false,
        onBlocCreated: (authBloc) =>
            authBloc.add(const AuthenticationEvent.appStarted()),
        child: PlatformApp.router(
          cupertino: (_, __) => CupertinoAppRouterData(theme: _themeCupertino),
          material: (_, __) => MaterialAppRouterData(theme: _themeMaterial),
          routeInformationProvider: _router.routeInformationProvider,
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
          title: appName,
          localizationsDelegates: const [DefaultMaterialLocalizations.delegate],
        ),
      );
}
