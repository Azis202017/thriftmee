import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class SettingAddressController extends GetxController {
  String selectedCriteria = 'Rumah';
  LocationPermission? permission;


  void changeCriteria(String criteria) {
    selectedCriteria = criteria;
    update();
  }

  Future<bool> checkLocationPermission() async {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      // Izin lokasi telah diberikan, Anda dapat mengambil lokasi saat ini

      return true;
    } else {
      return false;
    }
  }
}
