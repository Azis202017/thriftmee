import 'package:get/get.dart';

import '../controllers/list_address_controller.dart';

class ListAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListAddressController>(
      () => ListAddressController(),
    );
  }
}
