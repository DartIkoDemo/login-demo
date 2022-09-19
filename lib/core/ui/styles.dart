import 'package:flutter/material.dart';

class Styles {
  static ButtonStyle getButtonStyle(BuildContext c) => ButtonStyle(
        textStyle:
            MaterialStateProperty.all(Theme.of(c).primaryTextTheme.subtitle2),
        side: MaterialStateProperty.all(
            BorderSide(color: Theme.of(c).colorScheme.primary)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      );
}
