import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/routes/app_pages.dart';

import '../../../constant/image_collection.dart';
import '../../../shared/theme/color.dart';
import '../../../shared/theme/font.dart';
import '../controllers/send_email_verification_register_controller.dart';

class SendEmailVerificationRegisterView
    extends GetView<SendEmailVerificationRegisterController> {
  const SendEmailVerificationRegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
              Center(
                child: Text(
                  'Pilih Metode Verifikasi',
                  style: h2Bold,
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                style: h4Regular,
                textAlign: TextAlign.center,
                'Pilih salah satu metode dibawah ini untuk mendapatkan kode verifikasi',
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
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      color: Colors.white,
                      height: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'Verifikasi PIN',
                              style: h2Bold,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            style: h4Regular,
                            textAlign: TextAlign.center,
                            'Kode Verifikasi telah dikirim melalui e-mail ke adingding@gmail.com',
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 32.0),
                            child: TextFormField(
                              style: h1Bold,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              onEditingComplete: () {
                                Get.offAllNamed(Routes.HOME);
                              },
                              maxLength: 6,
                              decoration: const InputDecoration(
                                hintText: 'PIN',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: boxAbu,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: secondaryColor,
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
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
                          'azisa6980@gmail.com',
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
    );
  }
}
