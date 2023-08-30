// choose_location_view.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/choose_location_controller.dart';

class ChooseLocationView extends GetView<ChooseLocationController> {
  const ChooseLocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChooseLocationController>(builder: (_) {
      return controller.isLoading
          ? const Material(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text(
                  'Lokasi saat ini: ${controller.position!.latitude}, ${controller.position!.longitude}',
                  style: const TextStyle(fontSize: 18),
                ),
                centerTitle: true,
              ),
              body: controller.position != null
                  ? GoogleMap(
                      onMapCreated: controller.onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: controller.center,
                        zoom: 14.0,
                      ),
                      markers: controller.markers,
                    )
                  : const SizedBox(),
              bottomNavigationBar: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.locality,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${controller.kecamatan} ${controller.city}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onChanged: (query) {
                          if (query.isNotEmpty) {
                            controller.searchAddresses(query);
                          } else {
                            controller.searchResults.clear();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          itemCount: controller.searchResults.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: const Icon(Icons.location_on),
                              title: Text(
                                controller.searchResults[index],
                              ),
                              onTap: () {
                                // Panggil searchAddresses dengan alamat yang dipilih
                                controller.searchAddresses(controller.searchResults[index]);
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            // Lakukan sesuatu ketika tombol Pilih Lokasi ini ditekan
                          },
                          child: const Text(
                            'Pilih Lokasi ini',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
    });
  }
}
