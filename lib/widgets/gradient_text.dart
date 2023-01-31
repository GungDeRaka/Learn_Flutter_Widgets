import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;

  final Gradient gradient;

  const GradientText({Key? key, required this.text, required this.gradient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient
          .createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height)),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
