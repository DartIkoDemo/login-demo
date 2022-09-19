import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:login_demo/core/ui/styles.dart';
import 'package:login_demo/features/authentication/logic/authentication_bloc/authentication_bloc.dart';
import 'package:login_demo/features/authentication/logic/login_form_cubit/login_form_cubit.dart';
import 'package:login_demo/features/authentication/presentation/create_account_screen.dart';

class LoginScreen extends StatefulWidget {
  static const path = "/login";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(title: const Text('Login')),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<LoginFormCubit, LoginFormState>(
              builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 40.0),
                    child: Text(
                      "Registered credentials\nlogin: test@mail.com\npassword: 12345qwe",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                if (state.errorMessage != "")
                  Text(
                    state.errorMessage,
                    style: const TextStyle(color: Colors.red),
                  ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: PlatformTextField(
                                hintText: 'Email',
                                controller: emailTextController,
                                onChanged: (email) => context
                                    .read<LoginFormCubit>()
                                    .emailChanged(email),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: PlatformTextField(
                                autocorrect: false,
                                obscureText: true,
                                hintText: 'Password',
                                controller: passwordTextController,
                                onChanged: (pass) => context
                                    .read<LoginFormCubit>()
                                    .passwordChanged(pass),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 16),
                          Expanded(
                            child: PlatformTextButton(
                              material: (context, platform) =>
                                  MaterialTextButtonData(
                                style: Styles.getButtonStyle(context),
                              ),
                              onPressed: () =>
                                  context.go(CreateAccountScreen.path),
                              child: const Text("Create Account"),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: PlatformTextButton(
                              material: (context, platform) =>
                                  MaterialTextButtonData(
                                style: Styles.getButtonStyle(context),
                              ),
                              onPressed: () {
                                final loginFormCubit =
                                    context.read<LoginFormCubit>();
                                loginFormCubit
                                    .emailChanged(emailTextController.text);
                                if (_isEmptyError(loginFormCubit)) {
                                  loginFormCubit.passwordChanged(
                                      passwordTextController.text);
                                }
                                if (_isEmptyError(loginFormCubit)) {
                                  context
                                      .read<AuthenticationBloc>()
                                      .add(AuthenticationEvent.loginRequested(
                                        email: emailTextController.text,
                                        password: passwordTextController.text,
                                      ));
                                } else {
                                  if (Platform.isAndroid) {
                                    ScaffoldMessenger.of(context)
                                      ..hideCurrentSnackBar()
                                      ..showSnackBar(
                                        const SnackBar(
                                          content: Text("Bad input data"),
                                        ),
                                      );
                                  }
                                }
                              },
                              child: BlocBuilder<AuthenticationBloc,
                                  AuthenticationState>(
                                builder: (_, state) => state.maybeMap(
                                  loading: (_) =>
                                      const CircularProgressIndicator
                                          .adaptive(),
                                  orElse: () => const Text("Login"),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  bool _isEmptyError(LoginFormCubit loginFormCubit) =>
      loginFormCubit.state.errorMessage == "";
}
