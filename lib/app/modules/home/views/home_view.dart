import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../../../constant/image_collection.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: accentColor,
          // appBar: PreferredSize(
          //   preferredSize: const Size.fromHeight(114),
          //   child: AppBar(
          //     clipBehavior: Clip.none,
          //     backgroundColor: primary,
          //     shape: const RoundedRectangleBorder(
          //       borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(25),
          //         bottomRight: Radius.circular(25),
          //       ),
          //     ),
          //     leading: Container(
          //       margin: const EdgeInsets.only(
          //         left: 20,
          //         top: 63,
          //       ),
          //       child: TextFormField(
          //         decoration: const InputDecoration(
          //           filled: true,
          //           fillColor: Colors.white,
          //         ),
          //       ),
          //     ),
          //     leadingWidth: 213,

          //     actions: [
          //       Padding(
          //         padding: const EdgeInsets.only(
          //           top: 64.0,
          //           right: 16,
          //         ),
          //         child: GestureDetector(
          //           onTap: () {
          //             Get.toNamed(Routes.NOTIFICATION);
          //           },
          //           child: const Icon(
          //             Icons.notifications_outlined,
          //             color: whiteColor,
          //           ),
          //         ),
          //       ),
          //     ],
          //     centerTitle: true,
          //   ),
          // ),

          body: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 120,
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
                        children:
                            controller.images.asMap().entries.map((entry) {
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
                                  ? const Color(
                                      0xFF053F33) // Warna ketika aktif
                                  : const Color(
                                      0xFFD6D6D6,
                                    ), // Warna ketika tidak aktif
                            ),
                          );
                        }).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Kategori Produk',
                            style: textPlace,
                          ),
                          Text(
                            'Lihat Semua',
                            style: h4Regular.copyWith(
                              color: fontAbu,
                            ),
                          )
                        ],
                      ),
                      const Wrap(
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
                      const SizedBox(
                        height: 14,
                      ),
                      Text(
                        'Rekomendasi Item',
                        style: textPlace,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 196,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (_, index) {
                            return const Padding(
                              padding: EdgeInsets.only(right: 16.0),
                              child: NewItemList(
                                name: 'Roots Canada',
                                image: tshirt2,
                                price: '50000',
                                toko: 'Kema.wear',
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 500,
                        child: GridView.builder(
                          primary: false,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 16,
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1.4,
                          ),
                          itemCount: 4,
                          itemBuilder: (BuildContext ctx, index) {
                            return const NewItem(
                              image: tshirt10,
                              name: 'Thrift.cont',
                              toko: 'Gaun wanita roselyn',
                              price: 'Rp259.000',
                            );
                          },
                        ),
                      ),
                      Text(
                        'Thrift Item',
                        style: textPlace,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 196,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (_, index) {
                            return const Padding(
                              padding: EdgeInsets.only(right: 18.0),
                              child: NewItemListThrift(
                                name: 'Roots Canada',
                                image: tshirt2,
                                price: '50000',
                                toko: 'Kema.wear',
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 114,
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 48,
                  bottom: 18,
                ),
                decoration: const BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 211,
                      height: 32,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.only(
                            top: 20,
                          ),
                          prefixIconConstraints: const BoxConstraints(
                            minWidth: 20,
                            minHeight: 20,
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              right: 8,
                            ),
                            child: ImageIcon(
                              NetworkImage(
                                searchIcon,
                              ),
                              size: 20,
                            ),
                          ),
                          hintText: 'Cari produk dan toko',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    Row(children: [
                      Image.network(
                        whiteMessage,
                        color: whiteColor,
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        whiteBag,
                        color: whiteColor,
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        whiteNotification,
                        color: whiteColor,
                        width: 28,
                        height: 28,
                      ),
                    ]),
                  ],
                ),
              ),
            ],
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

class NewItem extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  final String toko;
  final void Function()? onTap;
  const NewItem(
      {super.key,
      required this.name,
      required this.image,
      required this.price,
      required this.toko,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              image,
              height: 171,
              width: 171,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            toko,
            style: h5Medium,
          ),
          Text(
            name,
            style: h5Regular.copyWith(
              color: fontAbu,
            ),
          ),
          Text(
            'Rp$price',
            style: h5SemiBold,
          ),
        ],
      ),
    );
  }
}

class NewItemList extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  final String toko;
  final void Function()? onTap;
  const NewItemList(
      {super.key,
      required this.name,
      required this.image,
      required this.price,
      required this.toko,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              8,
            ),
            child: Image.network(
              image,
              height: 106,
              width: 112,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            toko,
            style: h5Medium,
          ),
          Text(
            name,
            style: h5Regular.copyWith(
              color: fontAbu,
            ),
          ),
          Text(
            'Rp$price',
            style: h5SemiBold,
          ),
        ],
      ),
    );
  }
}

class NewItemListThrift extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  final String toko;
  final void Function()? onTap;
  const NewItemListThrift(
      {super.key,
      required this.name,
      required this.image,
      required this.price,
      required this.toko,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 123,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                  child: Image.network(
                    image,
                    width: 107,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 17,
                    margin: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 4.0,
                        right: 4.0,
                      ),
                      child: Text(
                        'tersedia 1 item',
                        style: textTitle.copyWith(
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            toko,
            style: h5Medium,
          ),
          Text(
            name,
            style: h5Regular.copyWith(
              color: fontAbu,
            ),
          ),
          Text(
            'Rp$price',
            style: h5SemiBold,
          ),
        ],
      ),
    );
  }
}
