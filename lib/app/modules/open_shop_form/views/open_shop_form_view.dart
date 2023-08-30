import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/widgets/onboarding_content/onboarding_button.dart';

import '../../../constant/image_collection.dart';
import '../../../shared/theme/color.dart';
import '../../../shared/theme/font.dart';
import '../controllers/open_shop_form_controller.dart';

class OpenShopFormView extends GetView<OpenShopFormController> {
  const OpenShopFormView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OpenShopFormController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Informasi Toko'),
          elevation: 1,
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
                const SizedBox(
                  height: 23,
                ),
                Text(
                  'Masukkan nama tokomu',
                  style: h4Medium,
                ),
                TextFormField(
                  controller: controller.nameShopController,
                  onChanged: controller.onChangeNameShop,
                  decoration: const InputDecoration(
                    hintText: 'Apa Nama Tokomu',
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
                TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    prefixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Thriftmee.co/',
                          style: textDescriptionSemiBold,
                        ),
                      ],
                    ),
                    hintText: '${controller.nameShop}',
                    hintStyle: textDescription.copyWith(
                      color: fontAbu,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: boxAbu,
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
             
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Wrap(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Dengan klik tombol di bawah, kamu menyetujui ',
                  style: h5Regular,
                  children: [
                    TextSpan(
                      text: 'Syarat & Ketentuan',
                      style: h5SemiBold.copyWith(
                        color: primary,
                      ),
                    ),
                    const TextSpan(text: ' serta '),
                    TextSpan(
                      text: 'kebijakan privasi',
                      style: h5SemiBold.copyWith(
                        color: primary,
                      ),
                    ),
                    const TextSpan(text: ' Pendaftaran Toko.'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              BottomNavigationButton(
                onTap: () {},
                text: 'Lanjut',
                style: h3Bold.copyWith(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
