import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/image_collection.dart';
import '../../../shared/theme/color.dart';
import '../../../shared/theme/font.dart';
import '../controllers/description_product_controller.dart';

class DescriptionProductView extends GetView<DescriptionProductController> {
  const DescriptionProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DescriptionProductController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: GestureDetector(
              onTap: () => Get.back(result: {
                
              }),
              child: Image.network(
                arrowLeftIcon,
              ),
            ),
          ),
          leadingWidth: 50,
          title:  Text(
            'Deskripsi Produk',
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
                  'Masukkan deskripsi produk',
                  style: h4SemiBold,
                ),
                TextFormField(
                  onChanged: controller.onChange,
                  maxLines: null,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 222,
                      child: Text(
                        'Tips:Tuliskan deskripan deskripsi produk kamu dengan jelas dan detail.',
                        style: h5Regular.copyWith(color: font2),
                      ),
                    ),
                    Text(
                      '${controller.countDescription}/3000',
                      style: h5Regular.copyWith(
                        color: font2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
