import 'package:flutter/material.dart';
import 'package:thriftmee/app/shared/theme/color.dart';


class BottomNavigationButton extends StatelessWidget {
  const BottomNavigationButton({
    super.key,
    required this.onTap,
    required this.text,
    this.color,
    this.style,
  });
  final String text;
  final void Function()? onTap;
  final Color? color;
  final TextStyle? style;
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
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? primary
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
