import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/change_address_controller.dart';

class ChangeAddressView extends GetView<ChangeAddressController> {
  const ChangeAddressView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChangeAddressView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChangeAddressView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
