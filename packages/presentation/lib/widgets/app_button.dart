import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onTap,
    this.text,
  });
  final VoidCallback? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CupertinoButton.filled(
          padding: const EdgeInsets.symmetric(vertical: 20),
          borderRadius: BorderRadius.circular(6),
          onPressed: onTap,
          child: text != null
              ? Text(text!,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w700))
              : const RepaintBoundary(
                  child: CircularProgressIndicator.adaptive())),
    );
  }
}
