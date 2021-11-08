import 'dart:convert';

import 'package:house_rent/model/campaign.dart';
import 'package:house_rent/services/api_urls.dart';
import 'package:http/http.dart' as http;

class CampaignApi {
  Future<Campaign> fetchCampaginData() async {
    final response = await http.get(Uri.parse(ApiUrls().campaign_get_url),
        headers: {'Accept': 'application/json'});
    if (response.statusCode == 200) {
      print(json.decode(response.body));
      return Campaign.fromJson(json.decode(response.body));
    }
    throw Exception("can't get data from API");
  }
}
