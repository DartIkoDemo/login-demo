import 'dart:developer';

import 'i_auth_service.dart';

class FakeAuthService implements IAuthService {
  static final _allowedUsers = ['test@mail.com'];
  static final _allowedPasswords = ['12345qwe'];

  @override
  Future<String> logIn({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    if (_allowedUsers.contains(email) && _allowedPasswords.contains(password)) {
      log("Login was successful", name: "Fake auth service login");
      return "fake_token";
    }
    throw Exception("No user found");
  }

  @override
  Future<void> logOut() async {
    log("Logout was successful", name: "Fake auth service logout");
  }

  @override
  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    _allowedUsers.add(email);
    _allowedPasswords.add(password);
    log("Signup was successful", name: "Fake auth service signup");
  }
}
