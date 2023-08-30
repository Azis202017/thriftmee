// choose_location_controller.dart

import 'dart:convert';
import 'package:custom_marker/marker_icon.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

import '../../../constant/api_key.dart';

class ChooseLocationController extends GetxController {
  bool isLoading = true;
  Position? position;
  GoogleMapController? mapController;
  Set<Marker> markers = {};
  LatLng center =
      const LatLng(-6.21462000, 106.84513000); // Koordinat pusat peta
  String locality = "";
  String kecamatan = "";
  String city = "";
  String distrik = "";
  List<String> searchResults = [];

  void searchAddresses(String query) async {
    final apiUrl =
        'https://maps.googleapis.com/maps/api/geocode/json?address=$query&key=$apiKey&components=country:ID';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final results = data['results'] as List<dynamic>;

      // Ambil LatLng dari hasil pencarian, misalnya:
      final location = results[0]['geometry']['location'];
      final newLatLng = LatLng(location['lat'], location['lng']);

      // Panggil moveMarkerToNewPosition untuk menampilkan marker dan mengganti kamera
      moveMarkerToNewPosition(newLatLng);

      for (final result in results) {
        final formattedAddress = result['formatted_address'] as String;
        final addressComponents = result['address_components'] as List<dynamic>;

        if (addressComponents.length == 1 &&
            formattedAddress.toLowerCase().contains('indonesia')) {
          continue;
        }

        if (!searchResults.contains(formattedAddress)) {
          searchResults.add(formattedAddress);
        }
      }
      update();
    } else {
      searchResults.clear();
      update();
    }
  }

  void moveMarkerToNewPosition(LatLng newPosition) {
    final newMarker = Marker(
      markerId: const MarkerId('currentLocation'),
      position: newPosition,
      icon: BitmapDescriptor.defaultMarker, // Ganti ikon marker jika diperlukan
      infoWindow: const InfoWindow(
        title: 'Lokasi Anda',
        snippet: 'Ini adalah lokasi saat ini.',
      ),
    );

    markers.clear();
    markers.add(newMarker);

    // Center map and animate to the new position
    centerMap(convertLatLngToPosition(newPosition));
  }

  Position convertLatLngToPosition(LatLng latLng) {
    return Position(
      latitude: latLng.latitude,
      longitude: latLng.longitude,
      accuracy: 0.0,
      altitude: 0.0,
      heading: 0.0,
      speed: 0.0,
      timestamp: DateTime.now(),
      speedAccuracy: 0.0,
    );
  }

  Future<void> fetchLocationInfo() async {
    if (position != null) {
      final apiUrl =
          'https://maps.googleapis.com/maps/api/geocode/json?latlng=${position!.latitude},${position!.longitude}&key=$apiKey';

      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final results = data['results'] as List<dynamic>;
        locality = results[0]['address_components'][1]['long_name'];
        kecamatan = results[0]['address_components'][5]['short_name'];

        city = results[0]['address_components'][6]['short_name'];
        distrik = results[0]['address_components'][7]['short_name'];
      } else {
        print("something worng");
        // Handle error response
      }

      update();
    }
  }

  @override
  void onInit() async {
    await getLocation();
    fetchLocationInfo();
    super.onInit();
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    if (position != null) {
      centerMap(position!);
      addMarker(position!);
    }
  }

  void centerMap(Position position) {
    mapController!.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(position.latitude, position.longitude),
          zoom: 14.0,
        ),
      ),
    );
  }

  void addMarker(Position position) async {
    final newMarker = Marker(
      markerId: const MarkerId('currentLocation'),
      position: LatLng(position.latitude, position.longitude),
      icon: await MarkerIcon.pictureAsset(
        assetPath: 'assets/img/marker.png',
        width: 120,
        height: 120,
      ),
      infoWindow: const InfoWindow(
        title: 'Lokasi Anda',
        snippet: 'Ini adalah lokasi saat ini.',
      ),
    );

    markers.clear();
    markers.add(newMarker);
    update();
  }

  Future<void> getLocation() async {
    try {
      position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      isLoading = false;
      addMarker(position!);
    } catch (e) {
      isLoading = false;
      // Handle error here, such as showing a message to the user.
    }
    update();
  }
}
