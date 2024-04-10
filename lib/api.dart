import 'dart:convert';
import 'package:http/http.dart' as http;

var keEndPoint = "https://dev.arooryo.com/expenseTrackkerAppapi.php";

class Api {
  Api();

  Future<dynamic> checkuserLogin(String username, String password) async {
    var data = {
      "action": "checkUserLogin",
      "userName": username,
      "userPassword": password,
    };
    var response = await http.post(Uri.parse(keEndPoint), body: data);
    if (response.statusCode == 200) {
      // print(response.body);
      final decodedData = jsonDecode(response.body);
      // print(decodedData);
      return decodedData;
    } else {
      return response.body;
    }
  }

  Future<dynamic> registerUser(String fullName, String username, String password, String address) async {
    var data = {
      "action": "registerUser",
      "fullName":fullName,
      "userName": username,
      "userPassword": password,
      "userAddr":address,
    };
    var response = await http.post(Uri.parse(keEndPoint), body: data);
    if (response.statusCode == 200) {
      // print(response.body);
      final decodedData = jsonDecode(response.body);
      // print(decodedData);
      return decodedData;
    } else {
      return response.body;
    }
  }
}
