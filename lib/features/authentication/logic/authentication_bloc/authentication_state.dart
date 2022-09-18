part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial({
    required bool isLoggedIn,
  }) = _InitialAuthenticationState;

  const factory AuthenticationState.ready({
    required bool isLoggedIn,
  }) = _ReadyAuthenticationState;

  const factory AuthenticationState.fail({
    required bool isLoggedIn,
  }) = _FailAuthenticationState;

  const factory AuthenticationState.loading({
    required bool isLoggedIn,
  }) = _LoadingAuthenticationState;

  factory AuthenticationState.loadingFromState(AuthenticationState state) =>
      AuthenticationState.loading(isLoggedIn: state.isLoggedIn);
}
