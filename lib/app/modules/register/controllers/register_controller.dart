import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  void login() {
    //TODO login page
  }
  void nextRegister() {

  }
  @override
  void dispose() {
    emailController.dispose();
    emailController.text = "";
    super.dispose();
  }
}
