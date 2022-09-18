import 'dart:developer';

import 'i_auth_service.dart';

class FakeAuthService implements IAuthService {
  @override
  Future<String> logIn({
    required String email,
    required String password,
  }) async {
    log("Login was successful", name: "Fake auth service login");
    return "fake_token";
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
    log("Signup was successful", name: "Fake auth service signup");
  }
}
