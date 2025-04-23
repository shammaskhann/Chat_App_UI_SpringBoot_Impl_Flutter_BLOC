// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatroom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomImpl _$$ChatRoomImplFromJson(Map<String, dynamic> json) =>
    _$ChatRoomImpl(
      id: json['id'] as String,
      roomId: json['roomId'] as String,
      name: json['name'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatRoomImplToJson(_$ChatRoomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomId': instance.roomId,
      'name': instance.name,
      'messages': instance.messages,
    };
