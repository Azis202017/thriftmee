import 'package:flutter/material.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

class EmptyState extends StatelessWidget {
  final String image;
  final String title;
  final String? description;
  final String? textButton;

  const EmptyState({
    super.key,
    required this.image,
    required this.title,
    this.description,
    this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Text(
          title,
          style: h3SemiBold,
          textAlign: TextAlign.center,
        ),
        Text(
          description ?? "",
          style: h4Regular,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
