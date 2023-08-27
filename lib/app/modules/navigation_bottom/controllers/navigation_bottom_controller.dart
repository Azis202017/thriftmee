import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thriftmee/app/modules/category/views/category_view.dart';
import 'package:thriftmee/app/modules/feed/views/feed_view.dart';
import 'package:thriftmee/app/modules/home/views/home_view.dart';

import '../../profile/views/profile_view.dart';
import '../../shop/views/shop_view.dart';

class NavigationBottomController extends GetxController {
  int selectedIndex = 0;
  List<Widget> page = [
    const HomeView(),
    const CategoryView(),
    const ShopView(),
    const FeedView(),
    const ProfileView(),
  ];
  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
