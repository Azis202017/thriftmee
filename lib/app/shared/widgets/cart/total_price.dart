import 'package:flutter/material.dart';
import 'package:thriftmee/app/constant/image_collection.dart';

import '../../theme/font.dart';

class TotalPrice extends StatelessWidget {
  final double? totalPrice;
  const TotalPrice({
    super.key,
    this.totalPrice = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Total Harga',
                    style: textDescription,
                  ),
                  Text(
                    totalPrice! <= 0 ? 'Rp-' : 'Rp $totalPrice',
                    style: textDescriptionSemiBold,
                  ),
                ],
              ),
              totalPrice! <= 0
                  ? const SizedBox()
                  : const Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                      ),
                      child: ImageIcon(
                        NetworkImage(
                          arrowUp,
                        ),
                        size: 20,
                      ),
                    ),
            ],
          ),
          SizedBox(
            width: 125,
            height: 32,
            child: ElevatedButton(
              child: const Text('Beli'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
