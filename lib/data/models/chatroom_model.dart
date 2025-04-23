import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:springboot_test_bench/data/models/message_model.dart';

part 'chatroom_model.freezed.dart';
part 'chatroom_model.g.dart';

@freezed
class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    required String id,
    required String roomId,
    required String name,
    required List<Message> messages,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomFromJson(json);
}
