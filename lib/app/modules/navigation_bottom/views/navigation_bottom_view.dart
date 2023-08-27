import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/modules/category/controllers/category_controller.dart';
import 'package:thriftmee/app/modules/home/controllers/home_controller.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../controllers/navigation_bottom_controller.dart';

class NavigationBottomView extends GetView<NavigationBottomController> {
  const NavigationBottomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController(), permanent: true);
    Get.put(CategoryController(), permanent: true);


    return GetBuilder<NavigationBottomController>(builder: (context) {
      return Scaffold(
        body: controller.page.elementAt(controller.selectedIndex),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 16,
            right: 16,
            bottom: 15,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedLabelStyle: h5Medium,
            iconSize: 24,
            unselectedLabelStyle: h5Medium,
            items: const [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ImageIcon(
                    NetworkImage(
                      homeIconInactive,
                    ),
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ImageIcon(
                    NetworkImage(
                      homeIcon,
                    ),
                  ),
                ),
                label: 'Beranda',
                tooltip: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ImageIcon(
                    NetworkImage(
                      categoryIcon,
                    ),
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ImageIcon(
                    NetworkImage(
                      categoryIconActive,
                    ),
                  ),
                ),
                label: 'Kategori',
                tooltip: 'Kategori',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ImageIcon(
                    NetworkImage(
                      shop,
                    ),
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ImageIcon(
                    NetworkImage(
                      shopActive,
                    ),
                  ),
                ),
                label: 'Toko',
                tooltip: 'Toko',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ImageIcon(
                    NetworkImage(
                      feed,
                    ),
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ImageIcon(
                    NetworkImage(
                      feedActive,
                    ),
                  ),
                ),
                label: 'Feed',
                tooltip: 'Feed',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ImageIcon(
                    NetworkImage(
                      profile,
                    ),
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ImageIcon(
                    NetworkImage(
                      profileActive,
                    ),
                  ),
                ),
                label: 'Profile',
                tooltip: 'Profile',
              ),
            ],
            currentIndex: controller.selectedIndex,
            elevation: 0,
            onTap: controller.onItemTapped,
          ),
        ),
      );
    });
  }
}
