import 'package:get/get.dart';

import '../controllers/foto_ulasan_controller.dart';

class FotoUlasanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FotoUlasanController>(
      () => FotoUlasanController(),
    );
  }
}
