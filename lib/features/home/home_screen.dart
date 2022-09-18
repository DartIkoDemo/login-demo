import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:login_demo/core/ui/styles.dart';

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
                Image.asset("assets/images/success.jpg"),
                PlatformTextButton(
                  cupertino: (context, platform) => CupertinoTextButtonData(),
                  material: (context, platform) => MaterialTextButtonData(
                    style: Styles.getButtonStyle(context),
                  ),
                  onPressed: () {},
                  child: const Text("Logout"),
                )
              ],
            ),
          ),
        ),
      );
}
