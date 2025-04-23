import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:springboot_test_bench/core/constants/api_urls.dart';
import 'dart:convert';

import 'package:springboot_test_bench/data/models/friend_model.dart';
import 'package:springboot_test_bench/services/sharedPref_service.dart';

class FriendProvider {
  static Future<List<FriendModel>> getFriends() async {
    String? token = await SharedPreferencesService.getToken();
    if (token == null) {
      throw Exception('UnAuthorized');
    }
    try {
      final response = await http.get(Uri.parse(ApiConstants.GET_FRIENDS),
          headers: {"Authorization": "Bearer $token"});
      log(response.body, name: 'FriendProvider.getFriends');
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body)['friends'];
        return data.map((friend) => FriendModel.fromJson(friend)).toList();
      } else if (response.statusCode == 401) {
        throw Exception('UnAuthorized');
      } else {
        throw Exception('Failed to load friends');
      }
    } catch (e) {
      throw Exception('Failed to load friends');
    }
  }
}
