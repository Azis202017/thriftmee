import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart' as p;
import 'package:share_plus/share_plus.dart';

class FeedController extends GetxController {
  bool like = false;
  void setLike() {
    like = !like;
    update();
  }

  void share(
      {required String image,
      required String namaToko,
      required String feed}) async {}
}

class Share {}
