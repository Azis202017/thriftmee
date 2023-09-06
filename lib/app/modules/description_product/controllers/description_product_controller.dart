import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DescriptionProductController extends GetxController {
  TextEditingController descriptionController = TextEditingController();
  String descriptionProduc = "";

  int maxLines = 1;
  int maxLength = 3000;
  int countDescription = 0;
  void onChange(String text) {
    if (text.length > maxLength) {
      return;
    }
  

    int charactersBeforeChange = descriptionProduc.length;
    int charactersAfterChange = text.length;
    int characterChangeCount = charactersAfterChange - charactersBeforeChange;

    descriptionProduc = text;

    // Jika karakter ditambahkan, tambahkan ke countDescription.
    if (characterChangeCount > 0) {
      countDescription += characterChangeCount;
    } else {
      // Jika karakter dihapus, kurangkan dari countDescription.
      countDescription -= -characterChangeCount; // Negatif menjadi positif.
    }

    update();
  }

  
}
