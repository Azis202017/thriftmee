import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../controllers/try_on_controller.dart';

class TryOnView extends GetView<TryOnController> {
  const TryOnView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TryOnController>(
      init: TryOnController(),
      initState: (_) async {
        await Permission.camera.request();
        await Permission.microphone.request();
      },
      builder: (_) {
        return Scaffold(
          body: InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse(
                'https://9c66-2001-448a-20e0-fb7-9536-7628-30d4-4fca.ngrok-free.app/',
              ),
            ),
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                mediaPlaybackRequiresUserGesture: false,
              ),
            ),
            onWebViewCreated: (InAppWebViewController controllerInApp) {
              controller.webViewController = controllerInApp;
            },
            androidOnPermissionRequest: (InAppWebViewController controller,
                String origin, List<String> resources) async {
              return PermissionRequestResponse(
                  resources: resources,
                  action: PermissionRequestResponseAction.GRANT);
            },
          ),
        );
      },
    );
  }
}
