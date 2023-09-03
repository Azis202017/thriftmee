import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentColor,
      appBar: AppBar(
        title: Text('Pengiriman', style: h3SemiBold.copyWith(color: font)),
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Alamat pengiriman", style: textDescriptionSemiBold.copyWith(color: font)),
                      Text("Pilih alamat lain", style: textDescriptionSemiBold.copyWith(color: primary)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Divider(color: boxAbu),
                  const SizedBox(height: 8),
                  Text("Alamat", style: textDescriptionSemiBold.copyWith(color: font)),
                  const SizedBox(height: 4),
                  Text("Adingg (6281910192882)", style: h5Regular..copyWith(color: font2)),
                  const SizedBox(height: 2),
                  Text("Jalan buah batu, kota Bandung, Jawa barat.", style: h5Regular.copyWith(color: font2)),
                  const SizedBox(height: 11),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Text("Pesananan saya (3 produk)", style: h4SemiBold.copyWith(color: font)),
                  const SizedBox(height: 16),
                  Text("Kema.wear", style: h4Medium.copyWith(color: font)),
                  Text("Cimahi, Bandung", style: h5Regular.copyWith(color: font2)),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.network(imageRootsCanada),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Roots Canada", style: textDescriptionMedium.copyWith(color: font)),
                            Text("Abu-abu/L", style: h5Regular.copyWith(color: font2)),
                            Text("1 buah", style: h5Regular.copyWith(color: font2)),
                          ],
                        ),
                      ),
                      Text("Rp50.000", style: textDescriptionSemiBold.copyWith(color: font)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: Get.width,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pengiriman", style: textDescriptionMedium.copyWith(color: font)),
                            Text("Pilih metode lain", style: h5SemiBold.copyWith(color: primary)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Divider(color: boxAbu),
                        const SizedBox(height: 4),
                        Text("Standard", style: textDescriptionMedium.copyWith(color: font)),
                        Text("Rp 11.000", style: textDescription.copyWith(color: font)),
                        Text("Estimasi pesanan sampai 1 - 4 hari", style: h5Regular.copyWith(color: font2)),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sub Total", style: h4Medium.copyWith(color: font2)),
                      Text("Rp61.000", style: h4SemiBold.copyWith(color: font)),
                    ],
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Text("Erigo ", style: h4Medium.copyWith(color: font)),
                  Text("Cimahi, Bandung", style: h5Regular.copyWith(color: font2)),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.network(imageRootsCanada2),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Roots Canada", style: textDescriptionMedium.copyWith(color: font)),
                            Text("Abu-abu/L", style: h5Regular.copyWith(color: font2)),
                            Text("2 buah", style: h5Regular.copyWith(color: font2)),
                          ],
                        ),
                      ),
                      Text("Rp100.000", style: textDescriptionSemiBold.copyWith(color: font)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: Get.width,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pengiriman", style: textDescriptionMedium.copyWith(color: font)),
                            Text("Pilih metode lain", style: h5SemiBold.copyWith(color: primary)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Divider(color: boxAbu),
                        const SizedBox(height: 4),
                        Text("Standard", style: textDescriptionMedium.copyWith(color: font)),
                        Text("Rp 11.000", style: textDescription.copyWith(color: font)),
                        Text("Estimasi pesanan sampai 1 - 4 hari", style: h5Regular.copyWith(color: font2)),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sub Total", style: h4Medium.copyWith(color: font2)),
                      Text("Rp611.000", style: h4SemiBold.copyWith(color: font)),
                    ],
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 14),
                  Text("Ringkasan Belanja", style: h4SemiBold.copyWith(color: font)),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Harga (3 Barang)", style: textDescription.copyWith(color: font)),
                      Text("Rp150.000", style: textDescriptionSemiBold.copyWith(color: font)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Biaya Kirim", style: textDescription.copyWith(color: font)),
                      Text("Rp22.000", style: textDescriptionSemiBold.copyWith(color: font)),
                    ],
                  ),
                  const SizedBox(height: 14),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: placeHolder,
                    offset: Offset(0, -13),
                    blurRadius: 17,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Belanja", style: textDescriptionSemiBold.copyWith(color: font)),
                          Text("Rp172.000", style: h4SemiBold.copyWith(color: font)),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(168, 32),
                        ),
                        child: Center(child: Text("Pilih Pembayaran", style: body2Bold.copyWith(color: whiteColor))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
