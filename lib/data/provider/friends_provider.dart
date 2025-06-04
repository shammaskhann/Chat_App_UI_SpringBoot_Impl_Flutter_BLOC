import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:springboot_test_bench/core/constants/api_urls.dart';
import 'package:springboot_test_bench/data/models/searched_friend_model.dart';
import 'package:springboot_test_bench/services/sharedPref_service.dart';

class FriendsProvider {
  static Future<List<SearchedFriendModel>> getAllUser(String? search) async {
    try {
      String? token = await SharedPreferencesService.getToken();
      if (token == null) {
        throw Exception('UnAuthorized');
      }
      // Create the URI with optional search parameter
      final uri = Uri.parse(ApiConstants.GET_ALL_USERS).replace(
        queryParameters: search != null ? {'search': search} : null,
      );

      // Make the GET request
      final response = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json',
          // Add your authorization header if needed
          'Authorization': 'Bearer $token',
        },
      );

      // Check if request was successful
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);

        if (responseData['status'] == true) {
          final List<dynamic> usersJson = responseData['users'];
          log(usersJson.toString());
          return usersJson
              .map((json) => SearchedFriendModel.fromJson(json))
              .toList();
        } else {
          log('API Error: ${responseData['message']}');
          throw Exception(responseData['message']);
        }
      } else {
        log('HTTP Error: ${response.statusCode} - ${response.body}');
        throw Exception('Failed to load users');
      }
    } catch (e) {
      log('Error in getAllUser: $e');
      rethrow;
    }
  }

  static Future<String> sendFriendRequest(String userId) async {
    try {
      String? token = await SharedPreferencesService.getToken();
      if (token == null) {
        throw Exception('UnAuthorized');
      }
      final response = await http.get(
        Uri.parse("${ApiConstants.GET_SEND_FRIEND_REQUEST}?receiverId=$userId"),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      final Map<String, dynamic> responseData = json.decode(response.body);
      if (response.statusCode != 200) {
        throw Exception(
            responseData['message'] ?? 'Failed to send friend request');
      } else {
        return responseData['message'] ?? 'Friend request sent successfully';
      }
    } catch (e) {
      log('Error sending friend request: $e');
      rethrow;
    }
  }
}
