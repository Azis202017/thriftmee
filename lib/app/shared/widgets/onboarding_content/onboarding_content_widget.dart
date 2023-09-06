import 'package:flutter/material.dart';

import '../../theme/font.dart';

class OnboardingFitur extends StatelessWidget {
  const OnboardingFitur({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    this.width,
    this.height,
  });
  final String title;
  final String description;
  final String image;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          image,
          width: width,
          height: height,
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: h2Bold,
        ),
        Text(
          description,
          style: h4Medium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
