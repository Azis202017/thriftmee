import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpenShopFormController extends GetxController {
  String? nameShop = "";
  TextEditingController nameShopController = TextEditingController();

  void onChangeNameShop(String text) {
    nameShop = text.replaceAll(" ", "_");
    
    update();
  }
}
