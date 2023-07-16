import 'dart:convert';

import 'package:authentication/model.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  static register(UserModel userModel) async {
    String url = 'http://192.168.190.170:8080/api/v1/public/auth/register';
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request('POST', Uri.parse(url));
    request.body = jsonEncode(userModel);
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print('registration successful');
    } else {
      print('registration unsuccessful');
    }
  }

  static register1(UserModel userModel) async {
    print(userModel.username.toString());
    print(userModel.email);
    print(userModel.password);
    var url = Uri.parse('http://192.168.190.170:8080/api/v1/public/auth/register');
    var headers = {'Content-Type': 'application/json'};
    String body = jsonEncode(userModel.toJson());
    print(body);
    var response = await http.post(url, body: body, headers: headers);

    if (response.statusCode == 200) {
      print('registration successful');
    } else {
      print('registration unsuccessful');
    }
  }
}
