import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_pesanan_controller.dart';

class SettingsPesananView extends GetView<SettingsPesananController> {
  const SettingsPesananView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingsPesananView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SettingsPesananView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
