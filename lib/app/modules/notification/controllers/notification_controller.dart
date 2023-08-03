import 'package:get/get.dart';

class NotificationController extends GetxController {
  int index = 0;
  void notificationAll() {
    index = 0;
    update();
  }

  void notificationOrder() {
    index = 1;
    update();
  }

  void notificationOther() {
    index = 2;
    update();
  }
}
