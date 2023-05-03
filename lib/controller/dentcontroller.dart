import 'dart:convert';
import 'package:agan_healthcare_service/models/dnetistmodels.dart';
import 'package:agan_healthcare_service/models/mobilemodel.dart';
import 'package:http/http.dart' as http;

import '../models/servicemodel.dart';

class DentistController {

  Future<Dentist> fetchAlbum(String id) async {
    var requestBody = { "mode": id};
    
    final response = await http.post(
      Uri.parse(
          'https://agen-healthcare.nw.r.appspot.com/api/Auth/employee/doctor_list'),
      body: jsonEncode(requestBody),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Dentist.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
