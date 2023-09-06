import 'package:flutter/material.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

class EmptyState extends StatelessWidget {
  final String image;
  final String title;
  final String? description;
  final String? textButton;
  final bool? isShowButton;
  final String? nameButton;
  final void Function()? onPressed;

  const EmptyState({
    super.key,
    required this.image,
    required this.title,
    this.description,
    this.textButton,
    this.isShowButton = false,
    this.nameButton = "",
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(image),
        Text(
          title,
          style: h3SemiBold,
          textAlign: TextAlign.center,
        ),
        Text(
          description ?? "",
          style: h4Regular,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 47,
        ),
        isShowButton == true
            ? SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(
                    nameButton ?? "",
                    style: h3Bold.copyWith(
                      color: whiteColor,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
