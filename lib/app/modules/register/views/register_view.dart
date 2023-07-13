import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import 'package:thriftmee/app/shared/theme/font.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 37, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://res.cloudinary.com/dvjflmrkd/image/upload/v1689270044/thriftmee/c9nantsck1lhat9ctcwr.png',
            ),
            const SizedBox(height: 22),
            const Text('Ayo Gabung Sekarang', textAlign: TextAlign.center),
            const SizedBox(height: 22),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nama Lengkap',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 4),
            const Text('Contoh : 0881098738'),
            const SizedBox(height: 17),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: null,
              child: Text(
                'Selanjutnya',
                style: h4Bold,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text('atau daftar dengan'),
                ),
                const Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              height: 52,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://res.cloudinary.com/dvjflmrkd/image/upload/v1689273607/thriftmee/qv5ckjmgpo1ixwgah5ib.png',
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Google',
                    style: h4Bold,
                  ),
                ],
              ),
            ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: primary,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     padding: const EdgeInsets.symmetric(vertical: 16),
            //   ),
            //   onPressed: null,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Image.network(
            //         'https://res.cloudinary.com/dvjflmrkd/image/upload/v1689273607/thriftmee/qv5ckjmgpo1ixwgah5ib.png',
            //         height: 20,
            //         width: 20,
            //       ),
            //       const SizedBox(width: 10),
            //       Text(
            //         'Google',
            //         style: h4Bold,
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 7),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Dengan mendaftar di sini, kamu menyetujui ',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                children: [
                  TextSpan(
                      text: 'Syarat & Ketentuan',
                      style: TextStyle(color: primary)),
                  TextSpan(text: ' serta '),
                  TextSpan(
                      text: 'Kebijakan Privasi',
                      style: TextStyle(color: primary)),
                  TextSpan(text: ' Thriftmee.'),
                ],
              ),
            ),
            const SizedBox(height: 54),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun?',
                  style: h5Medium,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      color: primary,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
