import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/image_collection.dart';
import '../../../shared/theme/color.dart';
import '../../../shared/theme/font.dart';
import '../controllers/detail_pengiriman_controller.dart';

class DetailPengirimanView extends GetView<DetailPengirimanController> {
  const DetailPengirimanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: GestureDetector(
            onTap: () => Get.back(result: {}),
            child: Image.network(
              arrowLeftIcon,
            ),
          ),
        ),
        leadingWidth: 50,
        title: Text(
          'Detail Pengiriman',
          style: h3SemiBold,
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lengkapi detail pengirimanmu',
                style: h4SemiBold,
              ),
              Text(
                'Pastikan berat produkmu sesuai untuk pengiriman',
                style: textDescription.copyWith(
                  color: font2,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Berat',
                  hintStyle: textDescription.copyWith(
                    color: font2,
                  ),
                  enabledBorder: const UnderlineInputBorder(),
                  focusedBorder: const UnderlineInputBorder(),
                  suffixIconConstraints: const BoxConstraints(
                    maxHeight: 30,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(
                      right: 16,
                    ),
                    child: Text(
                      'Gram',
                      style: textDescriptionMedium.copyWith(
                        color: font,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
