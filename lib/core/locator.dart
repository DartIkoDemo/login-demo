import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:login_demo/core/repositories/authentication_repository.dart';
import 'package:login_demo/core/ui/app_theme.dart';
import 'package:login_demo/core/ui/router.dart';
import 'package:login_demo/core/ui/special_widgets/custom_bloc_observer.dart';
import 'package:login_demo/features/authentication/logic/authentication_bloc/authentication_bloc.dart';
import 'package:login_demo/features/authentication/logic/login_form_cubit/login_form_cubit.dart';
import 'package:login_demo/main.dart';

import 'components/first_launch_detector.dart';
import 'components/i_first_launch_detector.dart';
import 'components/i_string_validator.dart';
import 'components/string_validator.dart';
import 'services/fake_auth_service.dart';
import 'services/i_auth_service.dart';
import 'storages/i_secure_storage.dart';
import 'storages/token_storage.dart';

final GetIt getIt = GetIt.instance;

void initGetItComponents() {
  getIt.registerSingleton<BlocObserver>(CustomBlocObserver());
  Bloc.observer = getIt<BlocObserver>();

  getIt.registerSingleton<IFirstLaunchDetector>(FirstLaunchDetector());
  getIt.registerSingleton<IAuthService>(FakeAuthService());
  getIt.registerSingleton<ISecureStorage<String>>(TokenStorage(
    getIt<IFirstLaunchDetector>(),
    const FlutterSecureStorage(),
  ));

  getIt.registerFactory(() => AuthenticationRepository(
        authService: getIt<IAuthService>(),
        secureStorage: getIt<ISecureStorage>(),
      ));
  getIt.registerSingleton(
    AuthenticationBloc(getIt<AuthenticationRepository>()),
  );
  getIt.registerSingleton<GoRouter>(GoRouterFactory.createRouter(
    getIt<AuthenticationBloc>(),
  ));
  getIt.registerSingleton(LoginDemo(
    router: getIt<GoRouter>(),
    themeCupertino: AppTheme.lightCupertino,
    themeMaterial: AppTheme.lightMaterial,
  ));

  getIt.registerFactory<IStringValidator>(() => StringValidator());
  getIt.registerFactory<LoginFormCubit>(
    () => LoginFormCubit(getIt<IStringValidator>()),
  );
}
