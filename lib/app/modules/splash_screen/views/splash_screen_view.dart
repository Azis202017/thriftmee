import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(initState: (_) {
      Timer.periodic(const Duration(seconds: 4), (timer) {
        Get.toNamed(Routes.REGISTER);
        timer.cancel();
      });
    }, builder: (context) {
      return Scaffold(
        body: Center( 
          child: Image.network(
            'https://res.cloudinary.com/dkkga3pht/image/upload/v1689334371/Artboard_1_1_1_xynrsl.png',
          ),
        ),
      );
    });
  }
}
