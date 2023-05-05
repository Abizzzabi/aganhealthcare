import 'dart:convert';
import 'package:agan_healthcare_service/history.dart';
import 'package:agan_healthcare_service/models/historymodels.dart';
import 'package:http/http.dart' as http;


class HistoryController {

  Future<History> fetchAlbum(String id) async {
    var requestBody = {'id': '644b4d20f3ed12000bc6f26a'};
    
    final response = await http.post(
      Uri.parse(
          'https://agen-healthcare.nw.r.appspot.com/api/Auth/employee/booking_history'),
      body: jsonEncode(requestBody),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return History.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
