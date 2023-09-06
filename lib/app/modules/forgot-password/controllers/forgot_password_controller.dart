import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();
  String email = "";
  void onChange(text) {
    email = text;
    update();
  }
  void verificationPassword() {
    
    Get.toNamed(Routes.VERIFIKASI_PASSWORD, arguments: {
      'email' : email,
    });
  }
  @override
  dispose() {
    super.dispose();
    emailController.text = "";
    emailController.dispose();
  }
}
