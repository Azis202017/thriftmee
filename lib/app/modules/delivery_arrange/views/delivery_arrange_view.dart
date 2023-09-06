import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';
import 'package:thriftmee/app/shared/theme/shadow.dart';

import '../controllers/delivery_arrange_controller.dart';

class DeliveryArrangeView extends GetView<DeliveryArrangeController> {
  const DeliveryArrangeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: secondaryColor,
                    ),
                    boxShadow: [
                      appBarShadow,
                    ],
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            arrangeDelivery,
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Antar ke counter',
                            style: h4SemiBold,
                          ),
                        ],
                      ),
                      Text(
                        'Kirimkan paket anda melalui cabang pengiriman terdekat di Kota anda',
                        style: textDescription.copyWith(
                          color: font2,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Ingat :',
                  style: textDescriptionSemiBold,
                ),
                Text(
                  '1. Jam buka tergantung pada setiap cabang',
                  style: textDescription.copyWith(
                    color: font2,
                  ),
                ),
                Text(
                  '2. Pastikan alamat dan identitas dari penerima sudah sesuai  ',
                  style: textDescription.copyWith(
                    color: font2,
                  ),
                ),
                Text(
                  '3. Nomor resi pada pengiriman harap disimpan, untuk input data selajutnya',
                  style: textDescription.copyWith(
                    color: font2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
