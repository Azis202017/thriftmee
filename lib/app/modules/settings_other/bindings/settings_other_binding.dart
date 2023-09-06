import 'package:get/get.dart';

import '../controllers/settings_other_controller.dart';

class SettingsOtherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsOtherController>(
      () => SettingsOtherController(),
    );
  }
}
