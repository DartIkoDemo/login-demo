abstract class IAuthService {
  Future<void> signUp({required String email, required String password});

  Future<String> logIn({
    required String email,
    required String password,
  });

  Future<void> logOut();
}
