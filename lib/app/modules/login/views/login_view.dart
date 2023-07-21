import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/theme/color.dart';
import '../../../shared/theme/font.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Masuk'),
          leading: IconButton(
            onPressed: controller.close,
            icon: const Icon(Icons.arrow_back_ios),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 48,
                ),
                TextField(
                  controller: controller.emailController,
                  onChanged: controller.checkFillEmail,
                  decoration: const InputDecoration(
                    hintText: 'Masukan Email atau Nomor Ponsel',
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: controller.passwordController,
                  obscureText: !controller.isShowPassword ? true : false,
                  onChanged: controller.checkFillPassword,
                  decoration: InputDecoration(
                    hintText: 'Masukkan kata sandi',
                    suffixIcon: GestureDetector(
                      onTap: controller.showVisible,
                      child: !controller.isShowPassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: controller.email.isNotEmpty &&
                              controller.password.length >= 6
                          ? primary
                          : fontAbu,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: controller.validateLogin,
                    child: Text(
                      'Masuk',
                      style: h4Bold.copyWith(
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: controller.toForgetPassword,
                        child: Text(
                          'Lupa Kata Sandi?',
                          style: h5Regular.copyWith(
                            color: primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 2,
                        color: grey4Color,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        'atau masuk dengan',
                        style: h6Regular.copyWith(
                          color: grey3Color,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 2,
                        color: grey4Color,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 47,
                ),
                SizedBox(
                  height: 56,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://res.cloudinary.com/dvjflmrkd/image/upload/v1689273607/thriftmee/qv5ckjmgpo1ixwgah5ib.png',
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Masuk Dengan Google',
                          style: h4Medium,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: GestureDetector(
                    onTap: controller.toLoginPage,
                    child: RichText(
                      text: TextSpan(
                        text: 'Belum punya akun? ',
                        style: h5Medium,
                        children: [
                          TextSpan(
                            text: 'Daftar',
                            style: h5SemiBold.copyWith(
                              color: primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
       
      );
    });
  }
}
