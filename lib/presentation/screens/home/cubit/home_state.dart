part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loadingFriends() = friendsLoading;
  const factory HomeState.loadedFriends(List<FriendModel> friends) =
      loadedFriends;
  const factory HomeState.error(String message) = error;
}
