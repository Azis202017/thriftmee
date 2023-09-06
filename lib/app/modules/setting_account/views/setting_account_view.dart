import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/theme/color.dart';
import '../controllers/setting_account_controller.dart';

class SettingAccountView extends GetView<SettingAccountController> {
  const SettingAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pengaturan',
          style: h3SemiBold,
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 8,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTileSettingAccount(
                    onTap: () {
                      Get.toNamed(Routes.SETTING_ADDRESS);
                    },
                    title: 'Alamat Terdaftar',
                    icon: map,
                    subtitle: 'Atur alamat untuk pengiriman belanja',
                  ),
                  const ListTileSettingAccount(
                    title: 'Keamanan Akun',
                    icon: gembokIcon,
                    subtitle: 'Atur ulang kata sandi dan verifikasi diri',
                  ),
                  ListTileSettingAccount(
                    onTap: () {
                      Get.toNamed(
                        Routes.NOTIFICATION,
                      );
                    },
                    title: 'Notifikasi',
                    icon: notificationIcon,
                    subtitle: 'Atur notifikasi yang ingin kamu terima',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              color: Colors.white,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTitleIcon(
                    title: 'Hapus Akun',
                    icon: trashIcon2,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTitleIcon(
                    onTap: () {
                      Get.offAllNamed(
                        Routes.LOGIN,
                      );
                    },
                    title: 'Keluar Akun',
                    icon: logoutIcon,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}

class ListTileSettingAccount extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;
  final void Function()? onTap;

  const ListTileSettingAccount({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: textDescriptionSemiBold,
      ),
      subtitle: Text(
        subtitle,
        style: h5Regular,
      ),
      leading: Padding(
        padding: const EdgeInsets.only(
          top: 5,
        ),
        child: Image.network(
          icon,
          width: 24,
          height: 24,
        ),
      ),
      onTap: onTap,
    );
  }
}

class ListTitleIcon extends StatelessWidget {
  final String title;
  final String icon;
  final void Function()? onTap;
  const ListTitleIcon({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: textDescriptionSemiBold,
      ),
      leading: Image.network(
        icon,
        width: 24,
        height: 24,
      ),
    );
  }
}
