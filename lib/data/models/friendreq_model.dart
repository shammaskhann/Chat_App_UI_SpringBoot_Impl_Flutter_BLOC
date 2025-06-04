import 'package:freezed_annotation/freezed_annotation.dart';

part 'friendreq_model.freezed.dart';
part 'friendreq_model.g.dart';

@freezed
class FriendreqModel with _$FriendreqModel {
  const factory FriendreqModel(
      {required String senderId,
      required String senderUsername,
      required String senderEmail,
      required DateTime sentAt}) = _FriendreqModel;

  factory FriendreqModel.fromJson(Map<String, dynamic> json) =>
      _$FriendreqModelFromJson(json);
}
