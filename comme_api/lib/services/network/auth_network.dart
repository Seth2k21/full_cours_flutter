import 'dart:convert';

import 'package:http/http.dart' as http;

import '../api.dart';

class AuthNetwork {
  static loginWithEmailPassword({
    required String username,
    required String password,
  }) async {
    // send request
    http.Response response = await http.post(
      Uri.parse("${Api().baseApi}${Api().authLoginWithEmail}"),
      headers: {"Content-Type": "application/json"},
      body: json.encode({"username": username, "password": password}),
      encoding: Encoding.getByName('utf-8'),
    );
    // verifying of request status
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return json.decode(response.body);
    }
  }

  static loginWithGoogle() async {}

  static loginWithLinkedIn() async {}
}
