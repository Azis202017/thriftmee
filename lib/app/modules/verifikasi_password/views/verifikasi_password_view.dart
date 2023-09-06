import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/font.dart';
import 'package:thriftmee/app/shared/widgets/onboarding_content/onboarding_button.dart';

import '../../../shared/theme/color.dart';
import '../controllers/verifikasi_password_controller.dart';

class VerifikasiPasswordView extends GetView<VerifikasiPasswordController> {
  const VerifikasiPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buat Kata Sandi'),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 28,
              ),
              RichText(
                text: TextSpan(
                  text:
                      'Silahkan gunakan cara di bawah ini untuk memastikan kepemilikan akun ',
                  style: h4Regular,
                  children: [
                    TextSpan(
                      text: controller.email,
                      style: h4SemiBold.copyWith(
                        color: primary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 21,
                    vertical: 11,
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    const ImageIcon(
                      AssetImage(
                        emailIcon,
                      ),
                      size: 42,
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'E-mail ke',
                          style: h5Bold,
                        ),
                        Text(
                          controller.email,
                          style: h5Regular,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    
      bottomNavigationBar: BottomNavigationButton(
        onTap: () {},
        text: 'Kirim Kode Verifikasi',
        style: h3Bold.copyWith(
          color: whiteColor,
        ),
      ),
    );
  }
}
