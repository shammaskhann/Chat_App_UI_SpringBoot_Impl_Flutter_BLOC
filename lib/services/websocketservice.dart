import 'dart:convert';
import 'dart:developer';
import 'package:stomp_dart_client/stomp_dart_client.dart';

// class WebSocketService {
//   StompClient? _stompClient;
//   Function(String)? onMessageReceived;

//   void connect(String roomId) {
//     _stompClient = StompClient(
//       config: StompConfig.sockJS(
//         url: 'http://localhost:8080/chat',
//         onConnect: (StompFrame frame) {
//           log('✅ Connected to WebSocket');

//           // Subscribe to messages
//           _stompClient?.subscribe(
//             destination: "/topic/room/$roomId",
//             callback: (frame) {
//               log("📩 Received Message: ${frame.body}");
//               if (frame.body != null) {
//                 log("📩 Received Message: ${frame.body}");
//                 if (onMessageReceived != null) {
//                   onMessageReceived!(frame.body!);
//                 }
//               }
//             },
//           );
//         },
//         onWebSocketError: (dynamic error) => log('❌ Error: $error'),
//       ),
//     );

//     _stompClient!.activate();
//   }

//   void sendMessage(String roomId, String sender, String content) {
//     try {
//       final message = {
//         "roomId": roomId,
//         "content": content,
//         "sender": sender,
//       };
//       log("📤 Sending Message: ${message.toString()}");

//       _stompClient?.send(
//         destination: "/app/sendMessage/$roomId",
//         body: json.encode(message),
//       );
//     } catch (e) {
//       log("❌ Error: $e");
//     }
//   }

//   void disconnect() {
//     _stompClient?.deactivate();
//   }
// }
enum WebSocketMode { chat, lastMessage }

class WebSocketService {
  StompClient? _stompClient;
  WebSocketMode? currentMode;

  Function(String)? onChatMessageReceived;
  Function(Map<String, dynamic>)? onLastMessageReceived;

  void connect({
    required String roomId,
    required WebSocketMode mode,
  }) {
    currentMode = mode;

    _stompClient = StompClient(
      config: StompConfig.sockJS(
        url: 'http://localhost:8080/chat',
        onConnect: (StompFrame frame) {
          log('✅ Connected to WebSocket in $mode mode');

          if (mode == WebSocketMode.chat) {
            _subscribeToChat(roomId);
          } else if (mode == WebSocketMode.lastMessage) {
            _subscribeToLastMessage(roomId);
            requestLastMessage(roomId); // Optional initial request
          }
        },
        onWebSocketError: (dynamic error) => log('❌ WebSocket error: $error'),
      ),
    );

    _stompClient!.activate();
  }

  void _subscribeToChat(String roomId) {
    _stompClient?.subscribe(
      destination: "/topic/room/$roomId",
      callback: (frame) {
        if (frame.body != null) {
          log("📩 Chat Message: ${frame.body}");
          onChatMessageReceived?.call(frame.body!);
        }
      },
    );
  }

  void _subscribeToLastMessage(String roomId) {
    _stompClient?.subscribe(
      destination: "/topic/lastMessage/$roomId",
      callback: (frame) {
        if (frame.body != null) {
          final data = json.decode(frame.body!);
          log("🕓 Last Message Info: $data");
          onLastMessageReceived?.call(data);
        }
      },
    );
  }

  void sendMessage(String roomId, String sender, String content) {
    if (currentMode != WebSocketMode.chat) {
      log("⚠️ You're not connected in chat mode!");
      return;
    }

    try {
      final message = {
        "roomId": roomId,
        "content": content,
        "sender": sender,
      };

      _stompClient?.send(
        destination: "/app/sendMessage/$roomId",
        body: json.encode(message),
      );
    } catch (e) {
      log("❌ Error while sending message: $e");
    }
  }

  void requestLastMessage(String roomId) {
    if (currentMode != WebSocketMode.lastMessage) {
      log("⚠️ You're not connected in lastMessage mode!");
      return;
    }

    try {
      _stompClient?.send(
        destination: "/app/getLastMessage/$roomId",
        body: roomId,
      );
    } catch (e) {
      log("❌ Error while requesting last message: $e");
    }
  }

  void disconnect() {
    _stompClient?.deactivate();
    currentMode = null;
    log("🔌 Disconnected from WebSocket");
  }
}
