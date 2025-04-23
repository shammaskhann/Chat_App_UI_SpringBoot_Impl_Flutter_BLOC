import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:springboot_test_bench/core/constants/api_urls.dart';
import 'dart:convert';

import 'package:springboot_test_bench/data/models/chatroom_model.dart';

class RoomProvider {
  static Future<ChatRoom> joinChatroom(String chatRoomId) async {
    try {
      final url = '${ApiConstants.JOIN_CHATROOM}$chatRoomId';
      log(url, name: 'RoomProvider.joinChatroom');
      final response = await http.get(
        Uri.parse(url),
      );
      // log(response.body, name: 'RoomProvider.joinChatroom');
      if (response.statusCode == 200) {
        return ChatRoom.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to join chatroom');
      }
    } catch (e) {
      log(e.toString(), name: 'RoomProvider.joinChatroom');
      throw Exception('Failed to join chatroom');
    }
  }
}
