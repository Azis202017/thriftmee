import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../../../routes/app_pages.dart';
import '../controllers/successfull_create_controller.dart';

class SuccessfullCreateView extends GetView<SuccessfullCreateController> {
  const SuccessfullCreateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SuccessfullCreateController>(initState: (_) {
      Timer.periodic(const Duration(seconds: 4), (timer) {
        Get.offAllNamed(Routes.NAVIGATION_BOTTOM);
        timer.cancel();
      });
    }, builder: (_) {
      return SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFF9FCD9F),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selamat ading, Tokomu sudah jadi',
                  style: h2SemiBold,
                ),
                Text(
                  'tambah produkmu dan mulai berjualan',
                  style: textDescriptionMedium,
                ),
                const SizedBox(
                  height: 77,
                ),
                Image.network(
                  completeCreateShop,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
