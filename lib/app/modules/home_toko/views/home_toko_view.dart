import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../controllers/home_toko_controller.dart';

class HomeTokoView extends GetView<HomeTokoController> {
  const HomeTokoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: placeHolder,
      appBar: AppBar(
        title: Text('Toko Saya', style: h3SemiBold.copyWith(color: font)),
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: whiteColor,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.network(avatarMeiMeiShop, width: 75, height: 75),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("MeiMei Shop.", style: h3SemiBold.copyWith(color: font)),
                          Row(
                            children: [
                              Image.network(iconPengikut, width: 24, height: 24),
                              const SizedBox(width: 8),
                              Text("10 Pengikut", style: textDescription.copyWith(color: font2)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 358,
                    // height: 71,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: boxAbu),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Text("Transaksi Penjual", style: h4SemiBold.copyWith(color: font)),
                        const SizedBox(height: 8),
                        const MySeparator(color: boxAbu),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Transaksi sejak bergabung", style: textDescription.copyWith(color: font)),
                            Text("0", style: h4SemiBold.copyWith(color: font)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: Get.width,
              // height: 458,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Penjualan", style: h4SemiBold.copyWith(color: font)),
                      Text("Lihat Riwayat", style: h5SemiBold.copyWith(color: primary)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: accentColor,
                                border: Border.all(color: boxAbu),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Image.network(iconPesananBaru, width: 43, height: 43),
                            ),
                            const SizedBox(height: 4),
                            Text("Pesanan Baru", style: textDescriptionSemiBold.copyWith(color: font)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: accentColor,
                                border: Border.all(color: boxAbu),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Image.network(iconSiapDikirim, width: 42, height: 42),
                            ),
                            const SizedBox(height: 4),
                            Text("Siap Dikirim", style: textDescriptionSemiBold.copyWith(color: font)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Divider(color: boxAbu),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Produk", style: h4SemiBold.copyWith(color: font)),
                      Text("Tambah Produk", style: h5SemiBold.copyWith(color: primary)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Daftar Produkmu", style: textDescriptionMedium.copyWith(color: font)),
                          Text("0 Produk", style: h5Regular.copyWith(color: font2)),
                        ],
                      ),
                      Image.network(arrowRight, width: 24, height: 24),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Status Produkmu", style: textDescriptionMedium.copyWith(color: font)),
                          Text("2 Produk Diproses", style: h5Regular.copyWith(color: font2)),
                        ],
                      ),
                      Image.network(arrowRight, width: 24, height: 24),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Divider(color: boxAbu),
                  const SizedBox(height: 24),
                  Text("Respon Pembeli", style: h4SemiBold.copyWith(color: font)),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Image.network(iconUlasan, width: 24, height: 24),
                      const SizedBox(width: 8),
                      Text("Ulasan", style: textDescriptionMedium.copyWith(color: font)),
                    ],
                  ),
                  const SizedBox(height: 13),
                  Row(
                    children: [
                      Image.network(iconPesananDikomplain, width: 24, height: 24),
                      const SizedBox(width: 8),
                      Text("Pesanan Dikomplain", style: textDescriptionMedium.copyWith(color: font)),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: Get.width,
              // height: 245,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Text("Feed", style: h4SemiBold.copyWith(color: font)),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Unggah Postingan", style: textDescriptionMedium.copyWith(color: font)),
                          Text("0 Postingan", style: h5Regular.copyWith(color: font2)),
                        ],
                      ),
                      Image.network(arrowRight, width: 24, height: 24),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Divider(color: boxAbu),
                  const SizedBox(height: 16),
                  Text("Bantuan", style: h4SemiBold.copyWith(color: font)),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Image.network(iconPengaturanToko, width: 24, height: 24),
                      const SizedBox(width: 8),
                      Text("Pengaturan Toko", style: textDescriptionMedium.copyWith(color: font)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Image.network(iconCallCenter, width: 24, height: 24),
                      const SizedBox(width: 8),
                      Text("Call Center", style: textDescriptionMedium.copyWith(color: font)),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color = Colors.black}) : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 2.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
