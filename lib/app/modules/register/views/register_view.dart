import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';
import '../../../shared/widgets/onboarding_content/onboarding_button.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      builder: (_) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title:  Text('Daftar', style:h3SemiBold),
              leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const ImageIcon(
                  NetworkImage(
                    arrowLeftIcon,
                  ),
                ),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 37, left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Nama Lengkap',
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      onChanged: controller.onChangeName,
                      controller: controller.nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      'Email atau Nomor Ponsel',
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      onChanged: controller.onChangeEmail,
                      controller: controller.emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      'Kata sandi',
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      onChanged: controller.onChangeKataSandi,
                      controller: controller.kataSandiController,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: controller.showVisible,
                          child: !controller.isShowPassword
                              ? SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.network(
                                    closeEyeIcon,
                                  ),
                                )
                              : SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.network(
                                    eyeIcon,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const SizedBox(height: 17),
                    const SizedBox(
                      height: 18,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'Dengan mendaftar di sini, kamu menyetujui ',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Syarat & Ketentuan',
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          TextSpan(text: ' serta '),
                          TextSpan(
                            text: 'Kebijakan Privasi',
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          TextSpan(text: ' Thriftmee.'),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 54),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationButton(
              onTap:
                  controller.isButtonEnabled ? controller.nextRegister : null,
              text: 'Daftar ',
              color: controller.isButtonEnabled ? primary : fontAbu,
              style: h3Bold.copyWith(
                color: whiteColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
