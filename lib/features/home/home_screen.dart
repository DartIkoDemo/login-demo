import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:login_demo/core/ui/styles.dart';
import 'package:login_demo/features/authentication/logic/authentication_bloc/authentication_bloc.dart';

class HomeScreen extends StatelessWidget {
  static const path = "/";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => PlatformScaffold(
        appBar: PlatformAppBar(title: const Text("Login Demo Home Page")),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Success"),
                Flexible(child: Image.asset("assets/images/success.jpg")),
                PlatformTextButton(
                  material: (context, platform) => MaterialTextButtonData(
                    style: Styles.getButtonStyle(context),
                  ),
                  onPressed: () => context
                      .read<AuthenticationBloc>()
                      .add(const AuthenticationEvent.logoutRequested()),
                  child: const Text("Logout"),
                )
              ],
            ),
          ),
        ),
      );
}
