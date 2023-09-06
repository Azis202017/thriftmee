import 'package:get/get.dart';

import '../controllers/delivery_arrange_controller.dart';

class DeliveryArrangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeliveryArrangeController>(
      () => DeliveryArrangeController(),
    );
  }
}
