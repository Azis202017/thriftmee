import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../controllers/komentar_controller.dart';

class KomentarView extends GetView<KomentarController> {
  const KomentarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Komentar', style: h3SemiBold),
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 18),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(avatarNillaEssy, width: 33, height: 33),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Nilla Essy", style: textDescriptionSemiBold),
                        const SizedBox(width: 4),
                        Text("21.06.23", style: h5Regular),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text("Masih ada gak kak produknya?", style: textDescription),
                    const SizedBox(height: 4),
                    Text("Balas", style: textDescriptionSemiBold.copyWith(color: const Color(0xff5D5F60))),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(avatarKemaWear, width: 33, height: 33),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Kema.wear", style: textDescriptionSemiBold),
                        const SizedBox(width: 4),
                        Text("21.06.23", style: h5Regular),
                      ],
                    ),
                    const SizedBox(height: 4),
                    RichText(
                      text: TextSpan(
                        text: "@Nilla Essy ",
                        style: textDescriptionMedium.copyWith(color: primary),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Masih ada kak",
                            style: textDescription,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text("Balas", style: textDescriptionSemiBold.copyWith(color: const Color(0xff5D5F60))),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(avatarSitaasihpur, width: 33, height: 33),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Sitaasihpur", style: textDescriptionSemiBold),
                        const SizedBox(width: 4),
                        Text("21.06.23", style: h5Regular),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text("Masih ada gak kak produknya?", style: textDescription),
                    const SizedBox(height: 4),
                    Text("Balas", style: textDescriptionSemiBold.copyWith(color: const Color(0xff5D5F60))),
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
