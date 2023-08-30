import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thriftmee/app/routes/app_pages.dart';
import 'package:thriftmee/app/services/auth/register.dart';

class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController kataSandiController = TextEditingController();
  bool isShowPassword = false;
  void showVisible() {
    isShowPassword = !isShowPassword;
    update();
  }

  String email = "";
  String namaLengkap = "";
  String kataSandi = "";
  bool isButtonEnabled = false;
  bool successRegister = false;
  void onChangeEmail(String text) {
    email = text;
    update();
  }

  void onChangeName(String text) {
    namaLengkap = text;
    update();
  }

  void onChangeKataSandi(String text) {
    kataSandi = text;
    isButtonEnabled =
        email.length > 3 && namaLengkap.length > 3 && kataSandi.length > 3;
    update();
    
  }

  void toLoginPage() {
    Get.toNamed(Routes.LOGIN);
  }

  void nextRegister() async {
    successRegister = await RegisterAuthService().registerAuth(
      email: emailController.text,
      fullName: nameController.text,
      password: kataSandiController.text,
    );
    update();
    if (successRegister) {
      Get.offAndToNamed(
        Routes.VERIFIKASI_PASSWORD,
        arguments: {
          'email': email,
        },
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    emailController.text = "";
    nameController.dispose();
    nameController.text = "";
    kataSandiController.dispose();
    kataSandiController.text = "";
    super.dispose();
  }
}
