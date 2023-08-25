import 'package:flutter/material.dart';

class GaridanTextColorWiget extends StatelessWidget {
  const GaridanTextColorWiget(
      {super.key, required this.text,});
  final Text text;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: [
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.primary
            ], // Define your gradient colors
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ).createShader(bounds);
        },
        child: text);
  }
}
