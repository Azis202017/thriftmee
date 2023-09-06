import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/widgets/onboarding_content/onboarding_button.dart';

import '../../../shared/theme/color.dart';
import '../../../shared/theme/font.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Lupa Kata Sandi',
              style: h3Bold,
            ),
            leading: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: greyColor,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 28,
                  ),
                  Text('Buat Kata Sandi Baru', style: h4Regular),
                  const SizedBox(
                    height: 21,
                  ),
                  TextFormField(
                    controller: controller.emailController,
                    onChanged: controller.onChange,
                    decoration: const InputDecoration(
                      hintText: 'email atau nomor ponsel',
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationButton(
            onTap: controller.email.isNotEmpty ? controller.verificationPassword  : null,
            text: 'Lanjutkan',
            style: h3Bold.copyWith(
              color: Colors.white,
            ),
            color: controller.email.isNotEmpty ? primary : inactiveColorButton,
          ),
        );
      }
    );
  }
}
