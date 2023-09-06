import 'package:get/get.dart';

import '../controllers/change_address_controller.dart';

class ChangeAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeAddressController>(
      () => ChangeAddressController(),
    );
  }
}
