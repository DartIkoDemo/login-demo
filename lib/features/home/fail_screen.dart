import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

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
                Image.asset("assets/images/fail.jpg"),
              ],
            ),
          ),
        ),
      );
}
