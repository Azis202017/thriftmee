import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        elevation: 1,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: secondaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(
                        60,
                      ),
                    ),
                    child: Image.network(
                      google,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mei Mei',
                        style: h4SemiBold,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        'MeiMei@gmail.com',
                        style: h5Regular,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  CardRow(
                    name: 'Buka Toko',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  CardRow(
                    name: 'Edit Profile ',
                    onPressed: () {},
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Pesanan Saya',
                style: h4SemiBold,
              ),
              const SizedBox(
                height: 12,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: IconWidget(
                      icon: wallet,
                      title: 'Belum dibayar',
                    ),
                  ),
                  Expanded(
                    child: IconWidget(
                      icon: box,
                      title: 'Dikemas',
                    ),
                  ),
                  Expanded(
                    child: IconWidget(
                      icon: delivery,
                      title: 'Dikirim',
                    ),
                  ),
                  Expanded(
                    child: IconWidget(
                      icon: shapes,
                      title: 'Beri nilai',
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Aktivitas Saya',
                style: h4SemiBold,
              ),
              const SizedBox(
                height: 16,
              ),
              const ListTileActivity(image: heart, title: 'Suka'),
              const ListTileActivity(
                image: messageQuestion,
                title: 'Komentar',
              ),
              const ListTileActivity(
                image: shopAdd,
                title: 'Toko yang di ikuti',
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Bantuan',
                style: h4SemiBold,
              ),
              const SizedBox(
                height: 16,
              ),
              const ListTileActivity(
                image: information,
                title: 'Pesanan yang di komplain',
              ),
              const ListTileActivity(
                image: setting,
                title: 'Pengaturan',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardRow extends StatelessWidget {
  const CardRow({super.key, required this.name, this.onPressed});
  final String name;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 171,
      height: 38,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),
            Image.network(
              arrowRight,
              width: 22,
              height: 22,
            )
          ],
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  final String title;
  final String icon;

  const IconWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          icon,
          width: 40,
          height: 40,
        ),
        Text(
          title,
          style: textDescription,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class ListTileActivity extends StatelessWidget {
  final String image;
  final String title;
  final void Function()? onTap;
  const ListTileActivity({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      title: Text(
        title,
        style: textDescriptionMedium,
      ),
      leading: Image.network(
        image,
        width: 24,
        height: 24,
      ),
    );
  }
}
