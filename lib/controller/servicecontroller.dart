import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/servicemodel.dart';

class ServiceController{



  Future<Service> fetchAlbum() async {
  final response = await http
      .post(Uri.parse('https://agen-healthcare.nw.r.appspot.com/api/Auth/admin/service_list'));

  if (response.statusCode == 200) {
    print(jsonDecode(response.body));
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Service.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
}