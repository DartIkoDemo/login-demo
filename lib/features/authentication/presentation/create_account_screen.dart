/*
 * Copyright (c) 2021 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:login_demo/core/ui/styles.dart';
import 'package:login_demo/features/authentication/logic/authentication_bloc/authentication_bloc.dart';
import 'package:login_demo/features/authentication/presentation/login_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  static const path = '/create-account';

  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Create Account'),
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: Center(
          child: Form(
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
                        material: (context, platform) => MaterialTextButtonData(
                          style: Styles.getButtonStyle(context),
                        ),
                        onPressed: () => context
                            .read<AuthenticationBloc>()
                            .add(AuthenticationEvent.signupRequested(
                              email: emailTextController.text,
                              password: passwordTextController.text,
                            )),
                        child: const Text('Create Account'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: PlatformTextButton(
                        material: (context, platform) => MaterialTextButtonData(
                          style: Styles.getButtonStyle(context),
                        ),
                        onPressed: () => context.go(LoginScreen.path),
                        child: const Text('Cancel'),
                      ),
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
