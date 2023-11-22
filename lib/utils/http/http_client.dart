import 'dart:convert';

import 'package:unitask/utils/constants/api_constants.dart';
import 'package:http/http.dart' as http;

class UHttpClient {
  UHttpClient._();
  static const String baseUrl = UApiConstants.baseUrl;

  // Helper method to make GET requests
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(
      Uri.parse('$baseUrl/$endpoint'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${UApiConstants.getUserEndpoint}',
      }, // pass auth token
    );
    return _handleResponse(response);
  }

  // Handle the response from the server
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data ${response.statusCode}');
    }
  }
}
