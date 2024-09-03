import 'dart:convert';

import 'package:http/http.dart' as http;

import '../api.dart';
import '../model/post.dart';


class PostMethod {
  static get_all() async {
    // send request
    http.Response response = await http.get(
      Uri.parse("${Api().baseApi}${Api().afficheRoute}"),
      headers: {"Content-Type": "application/json"},
    );
    // verifying of request status
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data.map((e) => PostModel.fromMap(e)).toList();
    } else {
      return json.decode(response.body);
    }
  }

}
