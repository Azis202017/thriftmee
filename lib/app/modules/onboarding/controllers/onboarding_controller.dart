import 'package:get/get.dart';
import 'package:thriftmee/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  int index = 0; 
  void next() {
    if (index >= 1) {
      return;
    } else {
      index++;
    }
    update();
  }
  void login() {
    Get.offAndToNamed(Routes.LOGIN);    
  }
  void skip() {
    index = 1;
    update();
  }
  @override
  void dispose() {
    index = 0;
    update();
    super.dispose();
  }
}
