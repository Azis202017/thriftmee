import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../../../constant/image_collection.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      return Scaffold(
        backgroundColor: accentColor,
        appBar: AppBar(
          backgroundColor: primary,
          actions: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.NOTIFICATION);
              },
              child: const Icon(
                Icons.notifications_outlined,
                color: whiteColor,
              ),
            ),
          ],
          centerTitle: true,
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
                  height: 24,
                ),
                CarouselSlider(
                  carouselController: controller.controller,
                  items: controller.images.map((image) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(image),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200.0, // Ganti tinggi sesuai kebutuhan
                    aspectRatio: 16 / 9,
                    viewportFraction: 1.0,
                    autoPlay: true,
                    clipBehavior: Clip.none,
                    onPageChanged: controller.onPageChangeChanged,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: controller.images.asMap().entries.map((entry) {
                    int index = entry.key;
                    return Container(
                      width: controller.current == index
                          ? 16.0
                          : 6.0, // Ganti lebar sesuai kebutuhan
                      height: controller.current == index
                          ? 6.0
                          : 6.0, // Ganti tinggi sesuai kebutuhan
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          controller.current == index ? 10 : 6,
                        ),
                        color: controller.current == index
                            ? const Color(0xFF053F33) // Warna ketika aktif
                            : const Color(
                                0xFFD6D6D6), // Warna ketika tidak aktif
                      ),
                    );
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kategori Produk',
                      style: buttonLinkLRegular,
                    ),
                    Text(
                      'Lihat Semua',
                      style: h4Regular.copyWith(
                        color: fontAbu,
                      ),
                    )
                  ],
                ),
                const Row(
                  children: [
                    CategoryProduct(
                      name: 'Sepatu',
                      image: shoesCategory,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CategoryProduct(
                      name: 'Dress',
                      image: dressCategory,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CategoryProduct(
                      name: 'Celana',
                      image: celanaCategory,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CategoryProduct(
                      name: 'Atasan',
                      image: kaosCategory,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CategoryProduct(
                      name: 'Thrift',
                      image: thriftCategory,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CategoryProduct(
                      name: 'One Set',
                      image: oneSetCategory,
                    ),
                  ],
                ),
                Text(
                  'Rekomendasi Item',
                  style: buttonLinkLRegular,
                ),
                Text(
                  'Thrift Item',
                  style: buttonLinkLRegular,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class CategoryProduct extends StatelessWidget {
  final String name;
  final String image;
  const CategoryProduct({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 5, right: 5, bottom: 7, top: 8),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Image.network(
            image,
            width: 40,
            height: 35,
          ),
        ),
        Text(
          name,
          style: h5Regular,
        ),
      ],
    );
  }
}
