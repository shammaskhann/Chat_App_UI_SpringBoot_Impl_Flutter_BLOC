import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:springboot_test_bench/data/models/searched_friend_model.dart';
import 'package:springboot_test_bench/data/provider/friends_provider.dart';

part 'search_friends_state.dart';
part 'search_friends_cubit.freezed.dart';

class SearchFriendsCubit extends Cubit<SearchFriendsState> {
  SearchFriendsCubit() : super(const SearchFriendsState.initial());

  Future<void> getAllUsers({String? searchQuery}) async {
    try {
      emit(const SearchFriendsState.loadingAllUsers());
      final users = await FriendsProvider.getAllUser(searchQuery);
      emit(SearchFriendsState.loadedAllUsers(users));
    } catch (e) {
      emit(SearchFriendsState.error(e.toString()));
    }
  }

  Future<void> sendFriendRequest(String userId) async {
    try {
      // Implement your friend request API call here
      final message = await FriendsProvider.sendFriendRequest(userId);
      // Refresh the list after sending request
      final currentState = state;
      if (currentState is loadedAllUsers) {
        getAllUsers(); // Refresh the list
      }
    } catch (e) {
      emit(SearchFriendsState.error(e.toString()));
    }
  }
}
