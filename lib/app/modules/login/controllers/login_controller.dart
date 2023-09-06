import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thriftmee/app/routes/app_pages.dart';
import 'package:thriftmee/app/shared/theme/color.dart';

class LoginController extends GetxController {
  String email = "";
  String password = "";
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isShowPassword = false;
  bool validate = false;
  bool loginGoogle = false;
  void close() {
    Get.offAllNamed(Routes.HOME);
  }

  void showVisible() {
    isShowPassword = !isShowPassword;
    update();
  }

  void checkFillEmail(text) {
    email = text;
    update();
  }

  void checkFillPassword(text) {
    password = text;
    update();
  }

  void toLoginPage() {
    Get.toNamed(Routes.REGISTER);
  }

  void validateLogin() {
    validate = emailController.text == "azisa6980@gmail.com" &&
        passwordController.text == "Lolitaa1231";
    if (validate) {
      if (loginGoogle) {
        Get.snackbar(
          'Gagal Login',
          'Silahkan masuk dengan google',
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: errorColor,
        );
      } else {
        Get.snackbar(
          'Berhasil Login',
          'Selamat berhasil Login',
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.green,
        );
        Get.offAndToNamed(Routes.HOME);
      }
    } else {
      Get.snackbar(
        'Gagal Login',
        'Username atau Password salah!',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: errorColor,
      );
    }
    update();
  }

  void toForgetPassword() {
    Get.toNamed(Routes.FORGOT_PASSWORD);
  }
}
