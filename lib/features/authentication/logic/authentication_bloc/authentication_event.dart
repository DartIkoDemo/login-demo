part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.appStarted() = _AppStartedEvent;

  const factory AuthenticationEvent.logoutRequested() = _LogoutRequestedEvent;

  const factory AuthenticationEvent.loginRequested({
    required String email,
    required String password,
  }) = _LoginRequestedEvent;

  const factory AuthenticationEvent.signupRequested({
    required String email,
    required String password,
  }) = _SignupRequestedEvent;
}
