import 'dart:convert';

import 'package:donation_project/models/charity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CharityProvider with ChangeNotifier {
  List<Charity> _campaigns = [
    Charity('Mặt trời cho em', 'Việt Nam', 'assets/images/charity_2.png'),
    Charity('The Moon House', 'Atlanta, United State',
        'assets/images/house01.jpeg'),
    Charity('The Moon House', 'Atlanta, United State',
        'assets/images/house02.jpeg'),
  ];

  List<Charity> get campaigns {
    return [..._campaigns];
  }

  // Future<void> fetchData() async {
  //   final url =
  //       Uri.parse("http://40.121.243.60/donation-api/swagger/v1/swagger.json");
  //   try {
  //     final response = await http.get(url);
  //     print(json.decode(response.body));
  //   } catch (error) {
  //     throw error;
  //   }
  // }
}
