import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  DateTime selectedDate = DateTime.now();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) selectedDate = picked;
    update();
  }

  String? selectedValue = "Laki Laki";
  List<String?>? items = [
    'Laki Laki',
    'Perempuan',
  ];
  void onChange(String? newValue) {
      selectedValue = newValue;
      update();
  }
}
