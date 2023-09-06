import 'package:get/get.dart';

import '../controllers/setting_address_controller.dart';

class SettingAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingAddressController>(
      () => SettingAddressController(),
    );
  }
}
