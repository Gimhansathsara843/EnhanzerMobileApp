import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<Map<String, dynamic>?> login(String username, String password) async {
    final url = Uri.parse('https://api.ezuite.com/api/External_Api/Mobile_Api/Invoke');

    final Map<String, dynamic> requestBody = {
      "API_Body": [
        {
          "Unique_Id": "",
          "Pw": password
        }
      ],
      "Api_Action": "GetUserData",
      "Company_Code": username
    };

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      if (responseData["Status_Code"] == 200) {
        return responseData["Response_Body"][0];
      }
    }
    return null;
  }
}
