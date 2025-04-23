import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:springboot_test_bench/core/constants/app_theme.dart';
import 'package:springboot_test_bench/data/models/friend_model.dart';
import 'package:springboot_test_bench/data/models/chatroom_model.dart';
import 'package:springboot_test_bench/data/provider/room_provider.dart';
import 'package:springboot_test_bench/presentation/screens/chat_screen/chat_screen.dart';

class ChatTile extends StatefulWidget {
  final FriendModel friend;

  const ChatTile({super.key, required this.friend});

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  late StompClient _lastMessageClient;
  String? lastMessage = 'Loading...';
  bool isUnread = false;
  String? timestamp;
  late ChatRoom chatroom;
  int unreadCount = 0;

  @override
  void initState() {
    super.initState();
    _connectToLastMessageSocket();
    fetchChatroom();
  }

  fetchChatroom() async {
    chatroom = await RoomProvider.joinChatroom(widget.friend.roomId);
    chatroom = chatroom.copyWith(name: widget.friend.username);
    log("Chatroom: ${chatroom.toJson()}");
    setState(() {
      chatroom = chatroom;
    });
    // Fetch the last message from the chatroom

    lastMessage = chatroom.messages.isNotEmpty
        ? chatroom.messages.last.content
        : 'No messages yet';
    isUnread = chatroom.messages.isNotEmpty &&
        chatroom.messages.last.sender != widget.friend.username;
  }

  void _connectToLastMessageSocket() {
    _lastMessageClient = StompClient(
      config: StompConfig.sockJS(
        url: 'http://localhost:8080/chat',
        onConnect: _onConnect,
        onWebSocketError: (error) => log('❌ LastMsg Error: $error'),
      ),
    );
    _lastMessageClient.activate();
  }

  void _onConnect(StompFrame frame) {
    log("✅ LastMessage Connected for room: ${widget.friend.roomId}");

    _lastMessageClient.subscribe(
      destination: "/topic/lastMessage/${widget.friend.roomId}",
      callback: (frame) {
        if (frame.body != null) {
          final data = json.decode(frame.body!);
          log("📩 Last Message: $data");
          setState(() {
            lastMessage = data['message'];
            isUnread = data['unread'];
            timestamp = data['timestamp'];
          });
        }
      },
    );

    // Trigger the message fetch
    _lastMessageClient.send(
      destination: "/app/getLastMessage/${widget.friend.roomId}",
      body: widget.friend.roomId,
    );
  }

  @override
  void dispose() {
    _lastMessageClient.deactivate();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: kprimaryColor,
          child: Text(widget.friend.username[0].toUpperCase(),
              style: const TextStyle(color: kWhiteColor)),
        ),
        title: Text(widget.friend.username, style: friendTileNameStyle),
        subtitle: Text(
          lastMessage ?? 'No messages yet',
          style: friendTileLastMessageStyle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        trailing: Column(
          children: [
            Text(
              timestamp != null ? _formatTimestamp(timestamp!) : '',
              style: friendTileTimeStyle,
            ),
            //Unread Counter
            const SizedBox(height: 5),
          ],
        ),
        onTap: () async {
          await fetchChatroom();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatScreen(chatroom: chatroom),
            ),
          );
        },
      ),
    );
  }

  String _formatTimestamp(String raw) {
    try {
      final dateTime = DateTime.parse(raw);
      return "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}";
    } catch (e) {
      return "";
    }
  }
}
