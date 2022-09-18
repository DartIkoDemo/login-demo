import 'package:bloc/bloc.dart';
import 'package:login_demo/core/components/i_string_validator.dart';

part 'login_form_state.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  final IStringValidator _validator;

  LoginFormCubit(IStringValidator validator)
      : _validator = validator,
        super(const LoginFormState());

  Future<void> emailChanged(String value) async => emit(state.copyWith(
        email: value,
        errorMessage: await _validator.validateEmail(value),
      ));

  void passwordChanged(String value) async => emit(state.copyWith(
        password: value,
        errorMessage: await _validator.validatePassword(value),
      ));

  void confirmedPasswordChanged(String value) => passwordChanged(value);
}
