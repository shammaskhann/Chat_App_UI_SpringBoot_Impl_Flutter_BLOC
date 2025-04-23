import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:springboot_test_bench/data/models/chatroom_model.dart';
import 'package:springboot_test_bench/data/models/message_model.dart';
import 'package:springboot_test_bench/services/sharedPref_service.dart';
import 'package:springboot_test_bench/services/websocketservice.dart';
import 'dart:async';
import 'dart:convert';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  //ChatCubit() : super(ChatState.initial());

  final WebSocketService _webSocketService;
  final ChatRoom chatRoom;

  ChatCubit(this.chatRoom, this._webSocketService)
      : super(const ChatState.initial()) {
    _webSocketService.onChatMessageReceived = (String messageJson) {
      log("📩 Received Message from initializer: $messageJson");
      final message = Message.fromJson(json.decode(messageJson));
      _addMessage(message);
    };

    //this is init function
    _webSocketService.connect(
        roomId: chatRoom.roomId, mode: WebSocketMode.chat);

    emit(ChatState.loaded(chatRoom.messages.reversed.toList()));
  }

  void initialConnection() async {
    emit(const ChatState.loading());
  }

  void sendMessage(String sender, String content) {
    _webSocketService.sendMessage(chatRoom.roomId, sender, content);
    final message = Message(
        sender: sender,
        content: content,
        timestamp: DateTime.now().toString(),
        read: false);
    // _addMessage(message);
  }

  void _addMessage(Message message) {
    state.maybeWhen(
      loaded: (messages) => emit(ChatState.loaded([message, ...messages])),
      orElse: () => emit(ChatState.loaded([message])),
    );
  }

  @override
  Future<void> close() {
    _webSocketService.disconnect();
    return super.close();
  }
}
