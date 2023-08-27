import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/theme/font.dart';

import '../../../constant/image_collection.dart';
import '../../../shared/theme/color.dart';
import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(builder: (_) {
      return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              clipBehavior: Clip.antiAlias,
              children: [
                Image.network(
                  'https://res.cloudinary.com/dkkga3pht/image/upload/v1693049348/Group_289964_2_a1gjzh.png',
                  width: double.infinity,
                  height: 174,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.network(),
                      const SizedBox(
                        height: 60,
                      ),
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Row(
                          children: [
                            Image.network(
                              arrowLeftIcon,
                              width: 31,
                              height: 31,
                            ),
                            Text(
                              'Edit Profile',
                              style: h3SemiBold,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 4,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              tshirt1,
                              width: 85,
                              height: 85,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Center(
                        child: Text(
                          'Ubah Foto Profile',
                          style: h4SemiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 29,
                      ),
                      const Text(
                        'Nama lengkap',
                      ),
                      const SizedBox(
                        height: 4,
                      ),

                      TextFormField(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Email',
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextFormField(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Nomor HP',
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Tanggal lahir',
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        readOnly: true, // To make the text field non-editable
                        controller: TextEditingController(
                          text: "${controller.selectedDate.toLocal()}"
                              .split(' ')[0],
                        ),
                        onTap: () => controller.selectDate(context),

                        decoration: InputDecoration(
                          suffixIconConstraints: const BoxConstraints(
                            minHeight: 20,
                            minWidth: 20,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.network(
                                'https://res.cloudinary.com/dkkga3pht/image/upload/v1693051504/calendar_wjtdwy.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Jenis Kelamin',
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      DropdownButtonFormField<String>(
                        value: controller.selectedValue,
                        items: controller.items?.map((String? item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item ?? ""),
                          );
                        }).toList(),
                        onChanged: controller.onChange,
                        decoration: const InputDecoration(
                          hintText: 'Select an option',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          height: 48,
          child: ElevatedButton(onPressed: () {}, child: const Text('Simpan')),
        ),
      );
    });
  }
}
