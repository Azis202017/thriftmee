import 'package:get/get.dart';

import '../controllers/settings_pesanan_controller.dart';

class SettingsPesananBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsPesananController>(
      () => SettingsPesananController(),
    );
  }
}
