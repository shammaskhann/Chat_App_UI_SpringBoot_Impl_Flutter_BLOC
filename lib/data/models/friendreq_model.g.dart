// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friendreq_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FriendreqModelImpl _$$FriendreqModelImplFromJson(Map<String, dynamic> json) =>
    _$FriendreqModelImpl(
      senderId: json['senderId'] as String,
      senderUsername: json['senderUsername'] as String,
      senderEmail: json['senderEmail'] as String,
      sentAt: DateTime.parse(json['sentAt'] as String),
    );

Map<String, dynamic> _$$FriendreqModelImplToJson(
        _$FriendreqModelImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'senderUsername': instance.senderUsername,
      'senderEmail': instance.senderEmail,
      'sentAt': instance.sentAt.toIso8601String(),
    };
