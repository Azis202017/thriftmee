import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmResiController extends GetxController {
  TextEditingController resiController = TextEditingController();
  String? resi = "";
  void onChange(String? text) {
    resi = text;
    update();
  }
}
