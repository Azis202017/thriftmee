import 'package:http/http.dart' as http;
import 'package:thriftmee/app/constant/api_key.dart';

class CheckResi {
  Future<bool> valdateResi(
      {required String resi, required String kodeJasaPengiriman}) async {
    try {
      Uri url = Uri.parse(
        'https://api.biteship.com/v1/trackings/$resi/couriers/$kodeJasaPengiriman',
      );
      http.Response response = await http
          .get(url, headers: {'Authorization': 'Bearer $apiKeyBiteship'});
      return true;
    } catch (e) {
      return false;
    }
  }
}
