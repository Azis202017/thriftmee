import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(builder: (_) {
      return Scaffold(
        backgroundColor: accentColor,
        appBar: AppBar(
          title: Text('Kategori Produk', style: h3SemiBold),
          centerTitle: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          actions: const [
            ImageIcon(
              size: 22,
              NetworkImage(
                searchIcon,
              ),
              color: primary,
            ),
            SizedBox(
              width: 8,
            ),
            ImageIcon(
              size: 22,
              NetworkImage(
                cartIcon,
              ),
              color: primary,
            ),
            SizedBox(
              width: 16,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: const BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Column di sebelah kiri
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                          child: const Text(
                            'Baru rilis',
                          ),
                        ),
                        Text(
                          '230  Item',
                          style: h4SemiBold,
                        ),
                        Text(
                          'Deskripsi',
                          style: textDescriptionMedium,
                        ),
                      ],
                    ),
                    // Carousel gambar di sebelah kanan
                    SizedBox(
                      width: 200,
                      height: 80,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          CarouselSlider(
                            carouselController:
                                controller.buttonCarouselController,
                            items: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 3,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(tshirt4),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 3,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(tshirt5),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 3,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    tshirt6,
                                  ),
                                ),
                              ),
                            ],
                            options: CarouselOptions(
                                height: 80,
                                enableInfiniteScroll: true,
                                viewportFraction: 0.34,
                                enlargeCenterPage:
                                    false // Menampilkan 3 gambar per tampilan
                                ),
                          ),
                          Positioned(
                            right: 10, // Jarak dari kanan
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: whiteColor,
                              ),
                              onPressed: () {
                                controller.buttonCarouselController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.linear);
                                // Ganti gambar ke kanan
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Wrap(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  CategoryCard(
                    title: 'Sepatu',
                    image: shoesCategory,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CategoryCard(
                    title: 'Dress',
                    image: dressCategory,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CategoryCard(
                    title: 'Celana',
                    image: celanaCategory,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CategoryCard(
                    title: 'Kaos',
                    image: kaosCategory,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CategoryCard(
                    title: 'Thrift',
                    image: thriftCategory,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CategoryCard(
                    title: 'Thrift',
                    image: thriftCategory,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CategoryCard(
                    title: 'Thrift',
                    image: thriftCategory,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CategoryCard(
                    title: 'Thrift',
                    image: thriftCategory,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CategoryCard(
                    title: 'Thrift',
                    image: thriftCategory,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.image,
    this.width = 52,
    this.height = 45,
  });
  final String title;
  final String image;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      child: Column(
        children: [
          const SizedBox(
            height: 28,
          ),
          Container(
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 9,
              vertical: 6,
            ),
            child: Image.network(
              image,
              width: width,
              height: height,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Center(
            child: Text(
              title,
              style: h5Regular,
            ),
          ),
        ],
      ),
    );
  }
}
