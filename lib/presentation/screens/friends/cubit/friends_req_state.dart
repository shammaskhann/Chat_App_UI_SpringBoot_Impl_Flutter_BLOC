part of 'friends_req_cubit.dart';

@freezed
class FriendsReqState with _$FriendsReqState {
  const factory FriendsReqState.initial() = _Initial;
  const factory FriendsReqState.loadingReq() = loadingReq;
  const factory FriendsReqState.loadedReq(List<FriendreqModel> requests) =
      loadedReq;

  const factory FriendsReqState.error(String message) = error;
}
