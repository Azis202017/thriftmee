import 'package:get/get.dart';

import '../controllers/kategori_thrift_controller.dart';

class KategoriThriftBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KategoriThriftController>(
      () => KategoriThriftController(),
    );
  }
}
