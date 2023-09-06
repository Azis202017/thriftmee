import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/image_collection.dart';
import '../../../shared/theme/color.dart';
import '../../../shared/theme/font.dart';
import '../../../shared/widgets/onboarding_content/onboarding_button.dart';
import '../../../shared/widgets/onboarding_content/onboarding_content_widget.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      dispose: (_) {},
      builder: (_) {
        return SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 9, left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 35,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: placeHolder,
                            ),
                            child: Center(
                              child: Text(
                                '${controller.index + 1} /2',
                                style: h5Regular,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: GestureDetector(
                              onTap: controller.skip,
                              child: Text(
                                'Skip',
                                style: h5Regular,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IndexedStack(
                        index: controller.index,
                        children: const [
                          OnboardingFitur(
                            image: onboarding1,
                            width: 358,
                            height: 249,
                            title: 'Brand Lokal Terbaik',
                            description:
                                'Temukan produk fasion terbaik dari brand lokal Indonesia',
                          ),
                          OnboardingFitur(
                            image: onboarding2,
                            width: 291,
                            height: 289,
                            title: 'Fitting Room ',
                            description:
                                'Coba bajumu sebelum dibeli dengan menggunakan fitur fitting room.',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationButton(
              onTap: controller.index >= 1 ? controller.login : controller.next,
              text: controller.index >= 1 ? 'Bergabung' : 'Next',
              style: h3Bold.copyWith(color: whiteColor),
              
            ),
          ),
        );
      },
    );
  }
}
