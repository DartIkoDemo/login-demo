import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:login_demo/core/ui/styles.dart';
import 'package:login_demo/features/authentication/logic/authentication_bloc/authentication_bloc.dart';

class FailScreen extends StatelessWidget {
  static const path = "/fail";

  const FailScreen({super.key});

  @override
  Widget build(BuildContext context) => PlatformScaffold(
        appBar: PlatformAppBar(title: const Text("Fail Page")),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Fail"),
                Flexible(child: Image.asset("assets/images/fail.jpg")),
                PlatformTextButton(
                  material: (context, platform) => MaterialTextButtonData(
                    style: Styles.getButtonStyle(context),
                  ),
                  onPressed: () => context
                      .read<AuthenticationBloc>()
                      .add(const AuthenticationEvent.logoutRequested()),
                  child: const Text("Back"),
                )
              ],
            ),
          ),
        ),
      );
}
