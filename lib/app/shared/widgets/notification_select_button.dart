import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../theme/font.dart';

class SelectNotificationButton extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final String text;
  final void Function()? onPressed;
  const SelectNotificationButton({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 99,
      height: 29,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: index == selectedIndex ? primary : boxAbu,
        ),
        child: Text(
          text,
          style: index == selectedIndex
              ? body2Regular.copyWith(
                  color: whiteColor,
                )
              : body2Regular.copyWith(
                  color: font,
                ),
        ),
      ),
    );
  }
}
