import 'package:get/get.dart';

import '../controllers/navigation_bottom_controller.dart';

class NavigationBottomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationBottomController>(
      () => NavigationBottomController(),
    );
  }
}
