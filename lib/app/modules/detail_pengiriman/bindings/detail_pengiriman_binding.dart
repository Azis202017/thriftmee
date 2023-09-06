import 'package:get/get.dart';

import '../controllers/detail_pengiriman_controller.dart';

class DetailPengirimanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPengirimanController>(
      () => DetailPengirimanController(),
    );
  }
}
