import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/shared/theme/theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "ThriftMee",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: theme,
    ),
  );
}
