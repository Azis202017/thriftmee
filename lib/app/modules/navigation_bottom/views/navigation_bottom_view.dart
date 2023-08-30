import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:thriftmee/app/modules/category/controllers/category_controller.dart';
import 'package:thriftmee/app/modules/feed/controllers/feed_controller.dart';
import 'package:thriftmee/app/modules/home/controllers/home_controller.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../../../constant/image_collection.dart';
import '../../../shared/theme/shadow.dart';
import '../controllers/navigation_bottom_controller.dart';

class NavigationBottomView extends GetView<NavigationBottomController> {
  const NavigationBottomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(
      HomeController(),
    );
    Get.put(
      CategoryController(),
    );
    Get.put(
      FeedController(),
    );

    return GetBuilder<NavigationBottomController>(builder: (_) {
      return PersistentTabView(
        context,
        controller: controller.navController,
        screens: controller.page,
        padding: const NavBarPadding.only(
          left: 16,
        ),
        margin: EdgeInsets.zero,
        navBarHeight: 82,

        items: <PersistentBottomNavBarItem>[
          PersistentBottomNavBarItem(
            icon: const ImageIcon(
              NetworkImage(
                homeIcon,
              ),
            ),
            inactiveIcon: const ImageIcon(
              NetworkImage(
                homeIconInactive,
              ),
            ),
            title: "Beranda",
            activeColorPrimary: primary,
            inactiveColorPrimary: font,
            textStyle: h5Medium,
          ),
          PersistentBottomNavBarItem(
            icon: const ImageIcon(
              NetworkImage(
                categoryIconActive,
              ),
            ),
            inactiveIcon: const ImageIcon(
              NetworkImage(
                categoryIcon,
              ),
            ),
            title: "Kategori",
            activeColorPrimary: primary,
            inactiveColorPrimary: font,
            textStyle: h5Medium,
          ),
          PersistentBottomNavBarItem(
            icon: const ImageIcon(
              NetworkImage(
                shopActive,
              ),
            ),
            inactiveIcon: const ImageIcon(
              NetworkImage(
                shop,
              ),
            ),
            title: "Shop",
            textStyle: h5Medium,
            activeColorPrimary: primary,
            inactiveColorPrimary: font,
          ),
          PersistentBottomNavBarItem(
              icon: const ImageIcon(
                NetworkImage(
                  feedActive,
                ),
              ),
              inactiveIcon: const ImageIcon(
                NetworkImage(
                  feed,
                ),
              ),
              title: "Feed",
              activeColorPrimary: primary,
              inactiveColorPrimary: font,
              textStyle: h5Medium),
          PersistentBottomNavBarItem(
            icon: const ImageIcon(
              NetworkImage(
                profileActive,
              ),
            ),
            inactiveIcon: const ImageIcon(
              NetworkImage(
                profile,
              ),
            ),
            title: "Profile",
            activeColorPrimary: primary,
            inactiveColorPrimary: font,
            textStyle: h5Medium,
          ),
        ],

        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
          boxShadow: <BoxShadow>[
            bottomShadow,
          ],
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,

        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,

          curve: Curves.ease,
          duration: Duration(
            milliseconds: 200,
          ),
        ),
        navBarStyle:
            NavBarStyle.style14, // Choose the nav bar style with this property.
      );
    });
  }
}
