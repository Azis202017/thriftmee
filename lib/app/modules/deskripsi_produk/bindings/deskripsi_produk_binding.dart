import 'package:get/get.dart';

import '../controllers/deskripsi_produk_controller.dart';

class DeskripsiProdukBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeskripsiProdukController>(
      () => DeskripsiProdukController(),
    );
  }
}
