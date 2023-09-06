import 'package:get/get.dart';

import '../controllers/send_email_verification_register_controller.dart';

class SendEmailVerificationRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SendEmailVerificationRegisterController>(
      () => SendEmailVerificationRegisterController(),
    );
  }
}
