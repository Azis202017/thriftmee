import 'package:get/get.dart';

import '../controllers/confirm_resi_controller.dart';

class ConfirmResiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmResiController>(
      () => ConfirmResiController(),
    );
  }
}
