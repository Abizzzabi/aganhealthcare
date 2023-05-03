import 'dart:convert';
import 'package:agan_healthcare_service/models/mobilemodel.dart';
import 'package:http/http.dart' as http;

import '../models/servicemodel.dart';

class MobileController {

  Future<Mobile> fetchAlbum(String mobile) async {
    var requestBody = {"mobile": mobile};
    
    final response = await http.post(
      Uri.parse(
          'https://agen-healthcare.nw.r.appspot.com/api/Auth/employee/check_register_mobile'),
      body: jsonEncode(requestBody),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Mobile.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
