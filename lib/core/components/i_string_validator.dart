abstract class IStringValidator {
  Future<String?> validateEmail(String email);

  Future<String?> validatePassword(String password);
}
