import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../controllers/deskripsi_produk_controller.dart';

class DeskripsiProdukView extends GetView<DeskripsiProdukController> {
  const DeskripsiProdukView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deskripsi Produk', style: h3SemiBold.copyWith(color: font)),
        centerTitle: true,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text("Masukan deskripsi produk", style: h4SemiBold.copyWith(color: font)),
            const SizedBox(height: 24),
            TextFormField(
              autocorrect: false,
              maxLines: null,
              decoration: InputDecoration(
                hintText: "Deskripsi Produk",
                hintStyle: textDescription..copyWith(color: font2),
                contentPadding: const EdgeInsets.symmetric(horizontal: 4),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: boxAbu),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: boxAbu),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text("Tips: Tuliskan deskripsi produk kamu dengan jelas dan detail.", style: h5Regular.copyWith(color: font2)),
                ),
                const SizedBox(width: 90),
                // TODO ini jumlah karakternya belum
                Text("0/3000", style: h5Regular.copyWith(color: font2)),
              ],
            ),
            Expanded(
              child: SizedBox(width: Get.width),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(Get.width, 48),
              ),
              child: Center(child: Text("Simpan", style: h3Bold.copyWith(color: whiteColor))),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
