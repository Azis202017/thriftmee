import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_detail_controller.dart';

class CategoryDetailView extends GetView<CategoryDetailController> {
  const CategoryDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CategoryDetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CategoryDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
