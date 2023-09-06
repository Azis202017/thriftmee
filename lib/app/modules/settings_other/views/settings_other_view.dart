import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_other_controller.dart';

class SettingsOtherView extends GetView<SettingsOtherController> {
  const SettingsOtherView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingsOtherView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SettingsOtherView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
