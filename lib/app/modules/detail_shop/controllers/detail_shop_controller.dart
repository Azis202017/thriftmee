import 'package:get/get.dart';

class DetailShopController extends GetxController {
 
  String selected = "Item terbaru";
  void onChange(value) {
    selected = value;
    update();
  }

}
