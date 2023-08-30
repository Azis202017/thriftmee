
import 'package:flutter/material.dart';

import '../../../constant/image_collection.dart';
import '../../theme/color.dart';
import '../../theme/font.dart';

class AddAddress extends StatelessWidget {
  final String? primaryText;
  final String? secondaryText;
  const AddAddress({
    super.key,
    this.primaryText,
    this.secondaryText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 5,
      ),
      child: Row(
        children: [
          Image.network(
            locationIcon,
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 12,
          ),
          RichText(
            text: TextSpan(
              text: primaryText,
              style: h5Medium.copyWith(
                color: primary,
              ),
              children: [
                TextSpan(
                  text: ' $secondaryText',
                  style: h5Regular,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
