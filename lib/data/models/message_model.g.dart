// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      sender: json['sender'] as String,
      content: json['content'] as String,
      timestamp: json['timestamp'] as String,
      read: json['read'] as bool,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'content': instance.content,
      'timestamp': instance.timestamp,
      'read': instance.read,
    };
