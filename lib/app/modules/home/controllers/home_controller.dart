import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int current = 0;
  CarouselController controller = CarouselController();

  final List<String> images = [
    'https://res.cloudinary.com/dkkga3pht/image/upload/v1693217800/Frame_427320700_xyub76.png',
    'https://res.cloudinary.com/dkkga3pht/image/upload/v1693217800/Frame_427320700_xyub76.png',
    'https://res.cloudinary.com/dkkga3pht/image/upload/v1693217800/Frame_427320700_xyub76.png',
  ];
  dynamic onPageChangeChanged(int index, CarouselPageChangedReason change) {
    current = index;
    print(current);
    update();
  }

  void change(int index) {
    controller.jumpToPage(index);
    update(); // Perbarui tampilan saat indikator diklik
  }
}
