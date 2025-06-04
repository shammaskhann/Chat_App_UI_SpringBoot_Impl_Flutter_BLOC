// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_friend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchedFriendModelImpl _$$SearchedFriendModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchedFriendModelImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      deviceToken: json['deviceToken'] as String?,
      mutualFriends: (json['mutualFriends'] as List<dynamic>)
          .map((e) => FriendModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchedFriendModelImplToJson(
        _$SearchedFriendModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'deviceToken': instance.deviceToken,
      'mutualFriends': instance.mutualFriends,
    };
