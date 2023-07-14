import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thriftmee/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  bool isButtonEnabled = false;
  void updateButtonState(String text) {
    isButtonEnabled = text.length > 3;
    update();
  }

  void toLoginPage() {
    Get.toNamed(Routes.LOGIN);
  }
  void nextRegister() {}
  @override
  void dispose() {
    emailController.dispose();
    emailController.text = "";
    super.dispose();
  }
}
