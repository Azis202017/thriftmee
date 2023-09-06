import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/theme/color.dart';

import '../../../shared/theme/font.dart';
import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
      init: AddProductController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Tambah Produk',
              style: h3SemiBold,
            ),
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
                  Text(
                    'Lengkapi informasi produkmu',
                    style: h4SemiBold,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Foto Produk',
                        style: h4SemiBold,
                      ),
                      TextButton(
                        onPressed: controller.addImage,
                        child: Text(
                          'Tambah',
                          style: textDescriptionMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  controller.imageFile.isEmpty
                      ? Container(
                          padding: const EdgeInsets.only(
                            top: 4,
                            bottom: 4,
                          ),
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 8,
                              ),
                              Image.network(
                                'https://res.cloudinary.com/dkkga3pht/image/upload/v1693997161/lamp-on_nditpc.png',
                                width: 24,
                                height: 24,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Pencet tombol tambah untuk menambah produk',
                                style: h5Regular.copyWith(
                                  color: font2,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Wrap(
                          children: List.generate(controller.imageFile.length,
                              (index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 16,
                              ),
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        5,
                                      ),
                                      child: Image.file(
                                        width: 60,
                                        height: 60,
                                        File(
                                          controller.imageFile[index].path,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: IconButton(
                                        onPressed: () =>
                                            controller.deleteImage(index),
                                        icon: const CircleAvatar(
                                          backgroundColor: font2,
                                          child: Icon(Icons.delete),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ListTileDetailProduk(
                    title: 'Detail Produk',
                  ),
                  const ListTileDetailProduk(
                    title: 'Deskripsi Produk',
                  ),
                  const ListTileDetailProduk(
                    title: 'Detail Produk',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Status Produk',
                      style: textDescriptionSemiBold,
                    ),
                    subtitle: Text(
                      'Jika status aktif maka produk kamu dapat ditemukan oleh pembeli ',
                      style: h5Regular,
                    ),
                    trailing: Switch.adaptive(
                      value: controller.isStatusActive,
                      onChanged: controller.changeStatus,
                      inactiveTrackColor: fontAbu,
                      activeTrackColor: primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ListTileDetailProduk extends StatelessWidget {
  final String title;
  const ListTileDetailProduk({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: textDescriptionSemiBold.copyWith(
              color: font2,
            ),
          ),
        ),
        const Divider(
          height: 0,
          thickness: 2,
        ),
      ],
    );
  }
}
