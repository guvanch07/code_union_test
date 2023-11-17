import 'package:flutter/material.dart';

extension DismissKeyboard on Widget {
  Widget dismissKeyboard() => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: this,
      );
}
