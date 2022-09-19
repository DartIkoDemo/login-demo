import 'i_string_validator.dart';

class StringValidator implements IStringValidator {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  static final _passwordRegExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  String validateEmail(String email) =>
      _emailRegExp.hasMatch(email) ? "" : "No email match";

  @override
  String validatePassword(String password) =>
      _passwordRegExp.hasMatch(password) ? "" : "No password match";
}
