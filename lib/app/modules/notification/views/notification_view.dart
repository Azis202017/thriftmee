import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/theme/font.dart';
import 'package:thriftmee/app/shared/widgets/empty_state.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/widgets/notification_select_button.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifikasi',
          style: h3SemiBold,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.SETTINGS);
            },
            child: const Icon(
              Icons.settings,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: GetBuilder<NotificationController>(builder: (_) {
        return SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SelectNotificationButton(
                      onPressed: controller.notificationAll,
                      index: controller.index,
                      text: 'Semua',
                      selectedIndex: 0,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SelectNotificationButton(
                      onPressed: controller.notificationOrder,
                      index: controller.index,
                      text: 'Pesanan',
                      selectedIndex: 1,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SelectNotificationButton(
                      onPressed: controller.notificationOther,
                      index: controller.index,
                      text: 'Lainnya',
                      selectedIndex: 2,
                    ),
                  ],
                ),
                IndexedStack(
                  index: controller.index,
                  children: const [
                    Center(
                      child: EmptyState(
                        image: '',
                        title: 'Belum ada notifikasi',
                        description: 'Coba cek filter lainnya.',
                      ),
                    ),
                    Center(
                      child: EmptyState(
                        image: '',
                        title: 'Belum ada notifikasi',
                        description: 'Coba cek filter lainnya.',
                      ),
                    ),
                    Center(
                      child: EmptyState(
                        image: '',
                        title: 'Belum ada notifikasi',
                        description: 'Coba cek filter lainnya.',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
