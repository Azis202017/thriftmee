import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/theme/color.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        actions: [
        
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.NOTIFICATION);
            },
            child: const Icon(
              Icons.notifications_outlined,
              color: whiteColor,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: const Center(
        child: SizedBox(
          width: double.infinity,
          child: Text(
            'HomeView is working',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
