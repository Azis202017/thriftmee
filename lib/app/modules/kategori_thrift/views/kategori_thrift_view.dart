import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../controllers/kategori_thrift_controller.dart';

class KategoriThriftView extends GetView<KategoriThriftController> {
  const KategoriThriftView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thrift', style: h3SemiBold.copyWith(color: font)),
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            GridView(
              // primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 16,
                childAspectRatio: 1 / 1.5,
              ),
              children: const [
                NewItem(
                  image: imageKemaWear1,
                  name: "Kema.wear",
                  store: "Roots Canada",
                  price: "RP50.000",
                ),
                NewItem(
                  image: imageKemaWear2,
                  name: "Kema.wear",
                  store: "Roots Canada",
                  price: "RP50.000",
                ),
                NewItem(
                  image: imageKemaWear3,
                  name: "Kema.wear",
                  store: "Roots Canada",
                  price: "RP50.000",
                ),
                NewItem(
                  image: imageKemaWear4,
                  name: "Kema.wear",
                  store: "Roots Canada",
                  price: "RP50.000",
                ),
                NewItem(
                  image: imageKemaWear5,
                  name: "Kema.wear",
                  store: "Roots Canada",
                  price: "RP50.000",
                ),
                NewItem(
                  image: imageKemaWear6,
                  name: "Kema.wear",
                  store: "Roots Canada",
                  price: "RP50.000",
                ),
                NewItem(
                  image: imageKemaWear7,
                  name: "Kema.wear",
                  store: "Roots Canada",
                  price: "RP50.000",
                ),
                NewItem(
                  image: imageKemaWear8,
                  name: "Kema.wear",
                  store: "Roots Canada",
                  price: "RP50.000",
                ),
                NewItem(
                  image: imageKemaWear9,
                  name: "Kema.wear",
                  store: "Roots Canada",
                  price: "RP50.000",
                ),
                NewItem(
                  image: imageKemaWear10,
                  name: "Kema.wear",
                  store: "Roots Canada",
                  price: "RP50.000",
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class NewItem extends StatelessWidget {
  const NewItem({
    super.key,
    required this.image,
    required this.name,
    required this.store,
    required this.price,
  });
  final String image;
  final String name;
  final String store;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.network(image),
        ),
        const SizedBox(height: 4),
        Text(name, style: h5Regular.copyWith(color: font)),
        const SizedBox(height: 2),
        Text(store, style: h5Regular.copyWith(color: font2)),
        const SizedBox(height: 2),
        Text(price, style: h5SemiBold.copyWith(color: font)),
      ],
    );
  }
}
