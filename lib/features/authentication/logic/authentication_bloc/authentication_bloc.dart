import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_demo/core/repositories/authentication_repository.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authenticationRepository;

  AuthenticationBloc(
    AuthenticationRepository authenticationRepository,
  )   : _authenticationRepository = authenticationRepository,
        super(const AuthenticationState.initial(isLoggedIn: false)) {
    on<AuthenticationEvent>((event, emit) => event.map(
          appStarted: (e) => _handleAppStarted(e, emit),
          logoutRequested: (e) => _handleLogoutRequested(e, emit),
          loginRequested: (e) => _handleLoginRequested(e, emit),
          signupRequested: (e) => _handleSignupRequested(e, emit),
        ));
  }

  Future<void> _handleAppStarted(
    _AppStartedEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationState.loadingFromState(state));
    await _authenticationRepository.init().then(
          (initOrFail) => initOrFail.fold(
            (l) => _emitFail(emit),
            (r) => _authenticationRepository.getStatus().then(
                  (statusOrFail) => statusOrFail.fold(
                    (l) => _emitFail(emit),
                    (r) => emit(AuthenticationState.ready(isLoggedIn: r)),
                  ),
                ),
          ),
        );
  }

  Future<void> _handleLogoutRequested(
    _LogoutRequestedEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationState.loadingFromState(state));
    await _authenticationRepository
        .logOut()
        .then((logoutOrFail) => logoutOrFail.fold(
              (l) => _emitFail(emit),
              (r) => emit(const AuthenticationState.ready(isLoggedIn: false)),
            ));
  }

  Future<void> _handleLoginRequested(
    _LoginRequestedEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationState.loadingFromState(state));
    await _authenticationRepository
        .logIn(
          email: event.email,
          password: event.password,
        )
        .then((tokenOrFail) => tokenOrFail.fold(
              (l) => _emitFail(emit),
              (r) => emit(const AuthenticationState.ready(isLoggedIn: true)),
            ));
  }

  Future<void> _handleSignupRequested(
    _SignupRequestedEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationState.loadingFromState(state));
    await _authenticationRepository
        .signUp(
          email: event.email,
          password: event.password,
        )
        .then((signupOrFail) => signupOrFail.fold(
              (l) => _emitFail(emit),
              (r) => emit(const AuthenticationState.ready(isLoggedIn: false)),
            ));
  }

  void _emitFail(Emitter<AuthenticationState> emit) =>
      emit(const AuthenticationState.fail(isLoggedIn: true));
}
