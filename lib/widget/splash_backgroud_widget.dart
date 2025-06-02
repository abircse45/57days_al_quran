import 'package:flutter/material.dart';

class SplashBackgroundImage extends StatelessWidget {
  final String imagePath;
  final BoxFit fit;

  const SplashBackgroundImage({
    super.key,
    required this.imagePath,
    required this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.asset(imagePath, fit: fit),
      ),
    );
  }
}
