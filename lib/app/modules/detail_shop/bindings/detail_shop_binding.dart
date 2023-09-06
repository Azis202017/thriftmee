import 'package:get/get.dart';

import '../controllers/detail_shop_controller.dart';

class DetailShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailShopController>(
      () => DetailShopController(),
    );
  }
}
