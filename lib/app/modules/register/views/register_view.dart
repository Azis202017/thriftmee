import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thriftmee/app/shared/theme/color.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 37, left: 16, right: 16),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                'https://res.cloudinary.com/dvjflmrkd/image/upload/v1689270044/thriftmee/c9nantsck1lhat9ctcwr.png',
              ),
              SizedBox(height: 22),
              Text('Ayo Gabung Sekarang', textAlign: TextAlign.center),
              SizedBox(height: 22),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 4),
              Text('Contoh : 0881098738'),
              SizedBox(height: 17),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: null,
                child: Text('Selanjutnya'),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                  Container(
                    child: Text('atau daftar dengan'),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                ],
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: null,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.network(
                    'https://res.cloudinary.com/dvjflmrkd/image/upload/v1689273607/thriftmee/qv5ckjmgpo1ixwgah5ib.png',
                  ),
                  SizedBox(width: 10),
                  Text('Google'),
                ]),
              ),
              SizedBox(height: 7),
              Text(
                'Dengan mendaftar di sini, kamu menyetujui Syarat & Ketentuan serta Kebijakan Privasi Thriftmee.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 54),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah punya akun?'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Masuk',
                      style: TextStyle(color: primary),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
