import 'dart:async';

import 'package:login_demo/core/services/i_auth_service.dart';
import 'package:login_demo/core/storages/i_secure_storage.dart';

class AuthenticationRepository {
  AuthenticationRepository({
    required ISecureStorage secureStorage,
    required IAuthService authService,
  })  : _secureStorage = secureStorage,
        _authService = authService;

  final ISecureStorage _secureStorage;
  final IAuthService _authService;

  Future<void> init() => _secureStorage.init();

  Future<bool> getStatus() => _secureStorage.isNotEmpty();

  Future<void> signUp({required String email, required String password}) async {
    //try {
    await _authService.signUp(
      email: email,
      password: password,
    );
    // } catch (_) {
    //   throw const SignUpWithEmailAndPasswordFailure();
    // }
  }

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    //try {
    final String result = await _authService.logIn(
      email: email,
      password: password,
    );
    //if (result)
    await _secureStorage.putItem(email, result);
    // } catch (_) {
    //   throw const LogInWithEmailAndPasswordFailure();
    // }
  }

  Future<void> logOut() async {
    // try {
    //final bool result =
    await _authService.logOut();
    //if (result)
    await _secureStorage.deleteAll();
    // } catch (_) {
    //   throw LogOutFailure();
    // }
  }
}
