import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  bool isButtonEnabled = false;
  void updateButtonState(String text) {
    isButtonEnabled = text.length > 3;
    update();
  }

  void login() {
    //TODO login page
  }
  void nextRegister() {}
  @override
  void dispose() {
    emailController.dispose();
    emailController.text = "";
    super.dispose();
  }
}
