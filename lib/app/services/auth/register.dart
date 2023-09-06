import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:thriftmee/app/constant/api_url.dart';

class RegisterAuthService {
  Future<bool> registerAuth({
    String? email,
    String? fullName,
    String? password,
  }) async {
    try {
      var response = await http.post(
        Uri.parse('$apiUrl/auth/register'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'fullname': fullName,
          'email_or_phone': email,
          'password': password,
          'confirmation_method': 'email',
        }),
      );
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return throw Exception(e);
    }
  }
}
