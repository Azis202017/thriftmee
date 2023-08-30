import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_address_controller.dart';

class ListAddressView extends GetView<ListAddressController> {
  const ListAddressView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListAddressView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ListAddressView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
