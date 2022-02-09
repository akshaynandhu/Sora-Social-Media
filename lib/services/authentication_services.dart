import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:socialmedia/constants/api_url.dart';
import 'package:socialmedia/controller/exception_controller.dart';


class AuthenticationServices {

  ///SignUp form Post Request

  static Future<String?> signUp(
      {required String fullName,
        required String userName,
        required String phone,
        required String password}) async {
    final withPhone = {
      "name": fullName,
      "username": userName,
      "phone": phone,
      "password": password,
    };

    var response = await http.post(ApiUrl.signupUrl, body: withPhone);

    switch (response.statusCode) {
      case 200:
        var jsonResponse = jsonDecode(response.body);
        return jsonResponse["status"];

      case 400:
        throw BadRequestException(response.body.toString());
    }
  }

/// Mobile Otp Verification Post Request

}