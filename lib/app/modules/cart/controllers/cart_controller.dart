import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class CartController extends GetxController {
  List cartList = [
    'halo'
  ];
  void goToHome() {
   
    Get.toNamed(Routes.HOME);
  }
}
