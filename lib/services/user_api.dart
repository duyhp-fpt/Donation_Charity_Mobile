import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:house_rent/model/user.dart';
import 'package:house_rent/services/api_urls.dart';
import 'package:http/http.dart' as http;

class UserApi {
  Future<DonatorInfo> createUser(DonatorInfo user) async {
    final response = await http.post(Uri.parse(ApiUrls().user_api),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'multipart/form-data'
          // 'Content-Type': 'application/json'
        },
        body: jsonEncode(user.toJson()));

    if (response.statusCode == 201) {
      print(user.toJson());
      return DonatorInfo.fromJson(jsonDecode(response.body));
    }
    throw Exception("Failed to create user: ${response.statusCode}");
  }
}
