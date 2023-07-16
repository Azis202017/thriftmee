import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../theme/font.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
    required this.onTap,
    required this.text,
  });
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.only(
        bottom: 60,
        left: 16,
        right: 16,
      ),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          text,
          style: h3Bold.copyWith(color: whiteColor),
        ),
      ),
    );
  }
}
