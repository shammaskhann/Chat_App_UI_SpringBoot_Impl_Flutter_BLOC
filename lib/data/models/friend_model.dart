import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_model.freezed.dart';
part 'friend_model.g.dart';

@freezed
class FriendModel with _$FriendModel {
  const factory FriendModel({
    required String id,
    required String roomId,
    required String username,
    required String email,
  }) = _FriendModel;

  factory FriendModel.fromJson(Map<String, dynamic> json) =>
      _$FriendModelFromJson(json);
}
