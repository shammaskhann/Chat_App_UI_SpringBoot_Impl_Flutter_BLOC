part of 'search_friends_cubit.dart';

@freezed
class SearchFriendsState with _$SearchFriendsState {
  const factory SearchFriendsState.initial() = _Initial;
  const factory SearchFriendsState.loadingAllUsers() = loadingAllUsers;
  const factory SearchFriendsState.loadedAllUsers(
      List<SearchedFriendModel> users) = loadedAllUsers;
  const factory SearchFriendsState.friendRequestSent(String message) =
      friendRequestSent;
  const factory SearchFriendsState.error(String message) = errorLoadingAllUsers;
}
