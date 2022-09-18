part of 'login_form_cubit.dart';

class LoginFormState {
  const LoginFormState({
    this.email = "",
    this.password = "",
    this.confirmedPassword = "",
    this.errorMessage,
  });

  final String email;
  final String password;
  final String confirmedPassword;
  final String? errorMessage;

  LoginFormState copyWith({
    String? email,
    String? password,
    String? confirmedPassword,
    String? errorMessage,
  }) {
    return LoginFormState(
      email: email ?? this.email,
      password: password ?? this.password,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
