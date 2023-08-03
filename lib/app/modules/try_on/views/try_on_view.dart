import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/try_on_controller.dart';

class TryOnView extends GetView<TryOnController> {
  const TryOnView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TryOnView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TryOnView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
