import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class TryOnController extends GetxController {
  InAppWebViewController? webViewController;
  @override
  void onInit() async {
    await Permission.camera.request();
    await Permission.microphone.request();
    super.onInit();
  }
}
