import 'package:get/get.dart';

import '../controllers/description_product_controller.dart';

class DescriptionProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DescriptionProductController>(
      () => DescriptionProductController(),
    );
  }
}
