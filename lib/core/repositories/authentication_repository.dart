import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:login_demo/core/services/i_auth_service.dart';
import 'package:login_demo/core/storages/i_secure_storage.dart';

class AuthenticationRepository {
  AuthenticationRepository({
    required ISecureStorage<String> secureStorage,
    required IAuthService authService,
  })  : _secureStorage = secureStorage,
        _authService = authService;

  final ISecureStorage _secureStorage;
  final IAuthService _authService;

  Future<Either<String, void>> init() async {
    try {
      await _secureStorage.init();
      return right(null);
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, bool>> getStatus() async {
    try {
      final isAuthenticated = await _secureStorage.isNotEmpty();
      return right(isAuthenticated);
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, void>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await _authService.signUp(email: email, password: password);
      return right(null);
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, void>> logIn({
    required String email,
    required String password,
  }) async {
    try {
      final String token = await _authService.logIn(
        email: email,
        password: password,
      );
      await _secureStorage.putItem(email, token);
      return right(null);
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, void>> logOut() async {
    try {
      await _authService.logOut();
      await _secureStorage.deleteAll();
      return right(null);
    } catch (e) {
      return left(e.toString());
    }
  }
}
