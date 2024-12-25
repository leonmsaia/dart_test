import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String baseUrl = "http://API_URL";

  static Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await http.post(
      Uri.parse("$baseUrl/auth/login"),
      body: {"username": username, "password": password},
    );
    return json.decode(response.body);
  }

  static Future<Map<String, dynamic>> getProfile() async {
    final response = await http.get(Uri.parse("$baseUrl/users/profile"));
    return json.decode(response.body);
  }
}
