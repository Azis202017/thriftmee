import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddProductController extends GetxController {
  ImagePicker imagePicker = ImagePicker();
  List<XFile> imageFile = [];
  bool isStatusActive = false;
  void addImage() async {
    final List<XFile> chooseFile = await imagePicker.pickMultipleMedia(
      requestFullMetadata: false,
    );
    imageFile.addAll(chooseFile);
    update();
  }

  void deleteImage(index) {
    imageFile.removeAt(index);
    update();
  }

  void changeStatus(bool status) {
    isStatusActive = status;
    update();
  }
}
