import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../controllers/kategori_thrift_controller.dart';

class KategoriThriftView extends GetView<KategoriThriftController> {
  const KategoriThriftView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thrift', style: h3SemiBold),
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 170,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.network(imageKemaWear1),
                    ),
                    const SizedBox(height: 4),
                    Text("Kema.wear", style: h5Medium),
                    const SizedBox(height: 2),
                    Text("Roots Canada", style: h5Regular.copyWith(color: const Color(0xff5D5F60))),
                    const SizedBox(height: 2),
                    Text("RP50.000", style: h5SemiBold),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
