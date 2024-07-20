// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import '../utils/constants.dart';

// class ApiService {
//   static Future<dynamic> getRequest(String endpoint) async {
//     final response = await http.get(Uri.parse('${Constants.baseUrl}$endpoint'));
//     return _processResponse(response);
//   }

//   static Future<dynamic> postRequest(
//       String endpoint, Map<String, dynamic> data) async {
//     final response = await http.post(
//       Uri.parse('${Constants.baseUrl}$endpoint'),
//       headers: {"Content-Type": "application/json"},
//       body: json.encode(data),
//     );
//     return _processResponse(response);
//   }

//   static dynamic _processResponse(http.Response response) {
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }
// }
