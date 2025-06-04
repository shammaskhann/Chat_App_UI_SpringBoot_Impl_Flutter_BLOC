import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:springboot_test_bench/core/constants/api_urls.dart';
import 'dart:convert';

import 'package:springboot_test_bench/data/models/friend_model.dart';
import 'package:springboot_test_bench/data/models/friendreq_model.dart';
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

  static Future<List<FriendreqModel>> getFriendRequests() async {
    String? token = await SharedPreferencesService.getToken();
    if (token == null) {
      throw Exception('UnAuthorized');
    }
    try {
      final response = await http.get(
          Uri.parse(ApiConstants.GET_FRIENDS_REQUESTS),
          headers: {"Authorization": "Bearer $token"});
      log(response.body, name: 'FriendProvider.getFriendRequests');
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body)['friendRequests'];
        return data
            .map((friendRequest) => FriendreqModel.fromJson(friendRequest))
            .toList();
      } else if (response.statusCode == 401) {
        throw Exception('UnAuthorized');
      } else {
        throw Exception('Failed to load friend requests');
      }
    } catch (e) {
      log(e.toString(), name: 'FriendProvider.getFriendRequests');
      throw Exception('Failed to load friend requests');
    }
  }

  static Future<bool> acceptFriendRequest(String id) async {
    String? token = await SharedPreferencesService.getToken();
    if (token == null) {
      throw Exception('UnAuthorized');
    }
    try {
      final response = await http.get(
        Uri.parse("${ApiConstants.GET_ACCEPT_FRIEND_REQUEST}?senderId=$id"),
        headers: {"Authorization": "Bearer $token"},
      );
      log(response.body, name: 'FriendProvider.acceptFriendRequest');
      if (response.statusCode == 200) {
        return true;
      } else if (response.statusCode != 200) {
        throw Exception('Failed to accept friend request');
      } else {
        return false;
      }
    } catch (e) {
      log(e.toString(), name: 'FriendProvider.acceptFriendRequest');
      throw Exception('Failed to accept friend request');
    }
  }

  static Future<bool> cancelFriendRequest(String id) async {
    try {
      String? token = await SharedPreferencesService.getToken();
      if (token == null) {
        throw Exception('UnAuthorized');
      }
      final response = await http.get(
        Uri.parse("${ApiConstants.GET_CANCEL_FRIEND_REQUEST}?senderId=$id"),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Failed to cancel friend request');
      }
    } catch (e) {
      log('Error canceling friend request: $e');
      rethrow;
    }
  }
}
