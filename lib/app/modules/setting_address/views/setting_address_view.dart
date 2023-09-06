import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:thriftmee/app/constant/image_collection.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/theme/color.dart';
import '../controllers/setting_address_controller.dart';

class SettingAddressView extends GetView<SettingAddressController> {
  const SettingAddressView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingAddressController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('SettingAddressView'),
          centerTitle: true,
          elevation: 1.5,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kontak',
                  style: textDescriptionSemiBold,
                ),
                TextFormField(),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Alamat Lengkap',
                  style: textDescriptionSemiBold,
                ),
                TextFormField(
                  maxLines: 4,
                  maxLength: 200,
                ),
                Text(
                  'Catatan untuk kurir (opsional)',
                  style: textDescriptionSemiBold,
                ),
                TextFormField(
                  maxLines: 2,
                  maxLength: 50,
                ),
                Text(
                  'Poin Lokasi',
                  style: textDescriptionSemiBold,
                ),
                TextFormField(
                  maxLines: 2,
                  readOnly: true,
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Lottie.network(
                                'https://res.cloudinary.com/dkkga3pht/raw/upload/v1693159675/LkHXEDopsE_olqrjx.json',
                                height: 200,
                                width: 200,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Akses lokasi kamu',
                                style: h3Bold,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Izinkan kami untuk menggunakan lokasi servis handphone mu',
                                textAlign: TextAlign.center,
                                style: textDescription,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 40,
                                child: ElevatedButton(
                                  child: const Text('Izinkan Lokasi'),
                                  onPressed: () async {
                                    if (controller.permission ==
                                            LocationPermission.whileInUse ||
                                        controller.permission ==
                                            LocationPermission.always) {
                                      // Izin lokasi sudah diberikan, langsung ambil lokasi
                                      Get.toNamed(Routes.CHOOSE_LOCATION);
                                    } else {
                                      // Minta izin lokasi jika belum diberikan

                                      if (await controller
                                          .checkLocationPermission()) {
                                        Get.toNamed(
                                          Routes.CHOOSE_LOCATION,
                                        );
                                      }
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 24,
                      minHeight: 24,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 12,
                      ),
                      child: Image.network(
                        location2Icon,
                        width: 24,
                        height: 24,
                      ),
                    ),
                    hintText:
                        'Dayeuhkolot 12 Halo Bandung, Kota Bandung Jawa Barat ',
                    hintStyle: textDescription,
                    suffixIconConstraints: const BoxConstraints(
                      minWidth: 24,
                      minHeight: 24,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(
                        right: 16,
                      ),
                      child: Text('Ubah', style: textDescriptionSemiBold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Tandai sebagai',
                  style: textDescriptionSemiBold,
                ),
                Row(
                  children: [
                    buildCriteriaButton('Rumah'),
                    const SizedBox(
                      width: 8,
                    ),
                    buildCriteriaButton('Kantor'),
                    const SizedBox(
                      width: 8,
                    ),
                    buildCriteriaButton('Kost'),
                    const SizedBox(
                      width: 8,
                    ),
                    buildCriteriaButton('Toko'),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 48,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          child: ElevatedButton(
            child: Text(
              'Simpan',
              style: h3Bold.copyWith(
                color: whiteColor,
              ),
            ),
            onPressed: () {},
          ),
        ),
      );
    });
  }

  Widget buildCriteriaButton(String criteria) {
    bool isSelected = controller.selectedCriteria == criteria;
    return ElevatedButton(
      onPressed: () {
        controller.changeCriteria(criteria);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          isSelected ? const Color(0xFF9FCD9F) : Colors.white,
        ),
        foregroundColor: MaterialStateProperty.all(
          isSelected ? const Color(0xFF053F33) : const Color(0xFFD3D3D3),
        ),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xFFD3D3D3),
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      child: Text(
        criteria,
        style: isSelected ? textDescriptionSemiBold : textDescription,
      ),
    );
  }
}
