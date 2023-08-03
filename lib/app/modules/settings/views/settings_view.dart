import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/theme/color.dart';

import '../../../shared/theme/font.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan Notifikasi'),
        centerTitle: true,
        shape: const Border(
          bottom: BorderSide(
            width: 0.5,
            color: placeHolder,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Izinkan kami untuk mengirimkan notifikasi, supaya kamu bisa dapat info dan update produk terbaru dari Thriftmee.',
                style: body2Regular,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Izinkan Notifikasi',
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Divider(
                color: placeHolder,
                thickness: 0.5,
              ),
              ListTile(
                title: Text(
                  'Pesanan',
                  style: body2Medium,
                ),
                subtitle: Text(
                  'Push Notification',
                  style: body2Regular,
                ),
              ),
              const Divider(
                color: placeHolder,
                thickness: 0.5,
              ),
              ListTile(
                title: Text(
                  'Lainnya',
                  style: body2Medium,
                ),
                subtitle: Text(
                  'Push Notification',
                  style: body2Regular,
                ),
              ),
              const Divider(
                color: placeHolder,
                thickness: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
