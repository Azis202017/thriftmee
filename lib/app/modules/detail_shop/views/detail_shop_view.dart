import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../controllers/detail_shop_controller.dart';

class DetailShopView extends GetView<DetailShopController> {
  const DetailShopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailShopController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Image.network(
                arrowLeftIcon,
              ),
            ),
          ),
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
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                      google,
                    ),
                  ),
                  title: Text(
                    'Kema.wear',
                    style: h4SemiBold,
                  ),
                  subtitle: Text(
                    '#thrift',
                    style: h5Regular,
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                Wrap(
                  children: [
                    SizedBox(
                      width: 307,
                      height: 32,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                            top: 5,
                          ),
                          fillColor: boxAbu,
                          filled: true,
                          hintText: 'Cari produk atau toko',
                          hintStyle: h5Medium.copyWith(
                            color: fontAbu,
                          ),
                          prefixIconConstraints: const BoxConstraints(
                            minHeight: 20,
                            minWidth: 20,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                              right: 8.0,
                              left: 16,
                            ),
                            child: Image.network(
                              searchIcon,
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (_) {
                              return GetBuilder<DetailShopController>(
                                  builder: (_) {
                                return SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16.0,
                                      top: 25,
                                      right: 16,
                                      bottom: 26,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          GestureDetector(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: Image.network(
                                              close,
                                              width: 32,
                                              height: 32,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            'Urutkan',
                                            style: h4Medium,
                                          ),
                                        ]),
                                        ListTileFilter(
                                          value: 'Item Terbaru',
                                          text: 'Item Terbaru',
                                          groupValue: controller.selected,
                                          onChange: controller.onChange,
                                        ),
                                        ListTileFilter(
                                          value: 'Paling banyak dilihat',
                                          text: 'Paling banyak dilihat',
                                          groupValue: controller.selected,
                                          onChange: controller.onChange,
                                        ),
                                        ListTileFilter(
                                          value: 'Harga terendah',
                                          text: 'Harga terendah',
                                          groupValue: controller.selected,
                                          onChange: controller.onChange,
                                        ),
                                        ListTileFilter(
                                          value: 'Harga tertinggi',
                                          text: 'Harga tertinggi',
                                          groupValue: controller.selected,
                                          onChange: controller.onChange,
                                        ),
                                        ListTileFilter(
                                          value: 'Item Populer',
                                          text: 'Item Populer',
                                          groupValue: controller.selected,
                                          onChange: controller.onChange,
                                        ),
                                        const SizedBox(
                                          height: 24,
                                        ),
                                        SizedBox(
                                          height: 40,
                                          width: double.infinity,
                                          child: ElevatedButton(
                                            child: const Text(
                                              'Terapkan filter',
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                            });
                      },
                      child: Container(
                        width: 40,
                        height: 32,
                        margin: const EdgeInsets.only(
                          left: 11,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: boxAbu,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.network(
                          filter,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                GridView.builder(
                  primary : false,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.75,
                    crossAxisCount: 2, // Adjust as needed
                  ),
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return const NewItem(
                        name: 'Roots Canada',
                        image: tshirt1,
                        price: '50000',
                        toko: 'Kema.wear');
                  },
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

class ListTileFilter extends StatelessWidget {
  final String value;
  final String text;
  final String groupValue;
  final void Function(String? text)? onChange;
  const ListTileFilter({
    super.key,
    required this.value,
    required this.text,
    required this.groupValue,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              text,
              style: h4Medium,
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Transform.scale(
              scale: 1.5,
              child: Radio(
                value: value,
                groupValue: groupValue,
                onChanged: onChange,
                activeColor: primary,
              ),
            ),
          ),
        ),
        const Divider(
          thickness: 2,
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
