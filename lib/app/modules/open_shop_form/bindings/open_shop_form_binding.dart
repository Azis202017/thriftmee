import 'package:get/get.dart';

import '../controllers/open_shop_form_controller.dart';

class OpenShopFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OpenShopFormController>(
      () => OpenShopFormController(),
    );
  }
}
