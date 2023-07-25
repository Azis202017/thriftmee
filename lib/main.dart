import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'app/routes/app_pages.dart';
import 'app/shared/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SentryFlutter.init(
    (options) {
      options.dsn =
          "https://ac932bc7fca6446ea9d1cfa7fcc78c03@o581344.ingest.sentry.io/4505590441181184";
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "ThriftMee",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: theme,
    );
  }
}
