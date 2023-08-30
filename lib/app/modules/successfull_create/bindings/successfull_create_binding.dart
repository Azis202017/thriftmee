import 'package:get/get.dart';

import '../controllers/successfull_create_controller.dart';

class SuccessfullCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuccessfullCreateController>(
      () => SuccessfullCreateController(),
    );
  }
}
