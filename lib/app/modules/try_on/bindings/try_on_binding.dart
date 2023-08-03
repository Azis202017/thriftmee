import 'package:get/get.dart';

import '../controllers/try_on_controller.dart';

class TryOnBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TryOnController>(
      () => TryOnController(),
    );
  }
}
