import 'dart:convert';
import 'package:agan_healthcare_service/models/mobilemodel.dart';
import 'package:http/http.dart' as http;

import '../models/servicemodel.dart';

class MobileController {
// Future<Mobile> fetchAlbum(String mobile) async {
//     var headers = {'Content-Type': 'application/json'};
//     var request =  http.Request(
//         'POST',
//         Uri.parse(
//             'https://agen-healthcare.nw.r.appspot.com/api/Auth/employee/check_register_mobile'));
//     request.body = json.encode({"mobile": "9843342571"});
//     // "9843342571"
//     request.headers.addAll(headers);

//     http.StreamedResponse response = await request.send();

//     if (response.statusCode == 200) {
//       print(await response.stream.bytesToString());
//       // print(await response.stream.toString());
//       var responseData = await response.stream.bytesToString();
//        return Mobile.fromJson(jsonDecode(responseData));
//     } else {
//       print(response.reasonPhrase);
//       throw Exception('Failed to load album');
//     }
//   }

//   agan() {}
// }

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
