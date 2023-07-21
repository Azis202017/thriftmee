import 'package:get/get.dart';

import '../controllers/verifikasi_password_controller.dart';

class VerifikasiPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifikasiPasswordController>(
      () => VerifikasiPasswordController(),
    );
  }
}
