import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/theme/color.dart';
import '../../../shared/theme/font.dart';
import '../controllers/confirm_resi_controller.dart';

class ConfirmResiView extends GetView<ConfirmResiController> {
  const ConfirmResiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ConfirmResiController>(builder: (_) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Silakan masukan no. Resi pengiriman anda. Pesanan akan dikonfirmasi status “Dalam Pengiriman” Jika resi yang dimasukan sudah terverfikasi oleh sistem.',
                    style: textDescription,
                  ),
                  TextFormField(
                    controller:controller.resiController ,
                    onChanged: controller.onChange,
                    decoration: const InputDecoration(
                      hintText: 'Masukkan kode resi disini',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: boxAbu,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: controller.resi!.isEmpty  ? null : () {},
                      child: const Text(
                        'Kirim',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
