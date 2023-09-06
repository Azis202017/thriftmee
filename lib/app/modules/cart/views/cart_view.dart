import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/widgets/empty_state.dart';

import '../../../shared/theme/color.dart';
import '../../../shared/theme/font.dart';
import '../../../shared/widgets/cart/add_address.dart';
import '../../../shared/widgets/cart/total_price.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(builder: (_) {
      return Scaffold(
        backgroundColor:
            controller.cartList.isEmpty ? Colors.white : accentColor,
        appBar: AppBar(
          title: Text('Keranjang', style: h3SemiBold),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const ImageIcon(
              NetworkImage(
                arrowLeftIcon,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: controller.cartList.isEmpty
            ? SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: EmptyState(
                    image: emptyCartIcon,
                    title: 'Keranjang kamu masih kosong',
                    description: 'Yuk isi dengan barang yang kamu sukai.',
                    isShowButton: true,
                    nameButton: 'Mulai Belanja',
                    onPressed: controller.goToHome,
                  ),
                ),
              )
            : const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4),
                    AddAddress(
                      primaryText: 'Tambahkan alamat',
                      secondaryText: 'biar belanja lebih asik',
                    ),
                  ],
                ),
              ),
        bottomNavigationBar: const TotalPrice(
          totalPrice: 14000,
        ),
      );
    });
  }
}
