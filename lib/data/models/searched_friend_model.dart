import 'package:freezed_annotation/freezed_annotation.dart';
import 'friend_model.dart';

part 'searched_friend_model.freezed.dart';
part 'searched_friend_model.g.dart';

@freezed
class SearchedFriendModel with _$SearchedFriendModel {
  const factory SearchedFriendModel({
    required String id,
    required String username,
    required String email,
    required String? deviceToken,
    required List<FriendModel> mutualFriends,
  }) = _SearchedFriendModel;

  factory SearchedFriendModel.fromJson(Map<String, dynamic> json) =>
      _$SearchedFriendModelFromJson(json);
}
