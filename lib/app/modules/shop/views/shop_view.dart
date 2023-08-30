import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/color.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  const ShopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentColor,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        title: const Text('Toko'),
        actions: const [
          ImageIcon(
            NetworkImage(
              searchIcon,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          ImageIcon(
            NetworkImage(
              cartActive,
            ),
            color: primary,
          ),
          SizedBox(
            width: 16,
          ),
        ],
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
              ListTileToko(
                namaToko: "Kema Wear",
                jenisToko: "#thrift",
                isFollowed: true,
                onPressed: () {},
              ),
              ListTileToko(
                namaToko: "Omo Ume",
                jenisToko: "#BrandLokal",
                isFollowed: false,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListTileToko extends StatelessWidget {
  const ListTileToko(
      {super.key,
      required this.namaToko,
      required this.jenisToko,
      required this.isFollowed,
      this.onPressed});
  final String namaToko;
  final String jenisToko;
  final bool isFollowed;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
          google,
        ),
        backgroundColor: Colors.transparent,
      ),
      title: Text(
        namaToko,
      ),
      subtitle: Text(
        jenisToko,
      ),
      trailing: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
        ),
        onPressed: isFollowed ? null : onPressed,
        child: Text(
          isFollowed ? "Ikuti" : "Diikuti",
        ),
      ),
    );
  }
}
