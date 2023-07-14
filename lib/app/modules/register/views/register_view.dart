import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      builder: (_) {
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 37, left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://res.cloudinary.com/dvjflmrkd/image/upload/v1689270044/thriftmee/c9nantsck1lhat9ctcwr.png',
                    ),
                    const SizedBox(height: 22),
                     Text(
                      'Ayo Gabung Sekarang',
                      style: h2Bold,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 22),
                    TextFormField(
                      onChanged: controller.updateButtonState,
                      controller: controller.emailController,
                      decoration: InputDecoration(
                        labelText: 'Nama Lengkap',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text('Contoh : 0881098738'),
                    const SizedBox(height: 17),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            controller.isButtonEnabled ? primary : fontAbu,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: controller.nextRegister,
                      child: Text(
                        'Selanjutnya',
                        style: h4Bold.copyWith(
                          color: whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child:  Text('atau daftar dengan', style : body2Bold),
                        ),
                        const Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 56,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://res.cloudinary.com/dvjflmrkd/image/upload/v1689273607/thriftmee/qv5ckjmgpo1ixwgah5ib.png',
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Google',
                              style: h4Bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 7),
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
                    Center(
                      child: GestureDetector(
                        onTap: controller.toLoginPage,
                        child: RichText(
                          text: TextSpan(
                            text: 'Sudah punya akun? ',
                            style: h5Medium,
                            children: [
                              TextSpan(
                                text: 'Masuk',
                                style: h5Medium.copyWith(
                                  color: primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
