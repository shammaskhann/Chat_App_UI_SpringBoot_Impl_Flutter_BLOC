import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:springboot_test_bench/data/models/friendreq_model.dart';
import 'package:springboot_test_bench/data/provider/chat_provider.dart';

part 'friends_req_state.dart';
part 'friends_req_cubit.freezed.dart';

class FriendsReqCubit extends Cubit<FriendsReqState> {
  FriendsReqCubit() : super(const FriendsReqState.initial());

  void loadFriendRequests() async {
    // FriendProvider.getFriendRequests()
    try {
      emit(const FriendsReqState.loadingReq());
      final List<FriendreqModel> requests =
          await FriendProvider.getFriendRequests();
      if (requests.isEmpty ||
          requests == null ||
          requests.length == 0 ||
          requests == []) {
        emit(const FriendsReqState.error("No friend requests found"));
      } else {
        emit(FriendsReqState.loadedReq(requests));
      }
    } catch (e) {
      log("Error loading friend requests: $e", name: "FriendsReqCubit");
      emit(FriendsReqState.error(e.toString()));
    }
  }

  void acceptFriendRequest(id) {
    FriendProvider.acceptFriendRequest(id).then((value) {
      if (value) {
        log("Friend request accepted successfully", name: "FriendsReqCubit");
        loadFriendRequests(); // Reload requests after accepting
      } else {
        log("Failed to accept friend request", name: "FriendsReqCubit");
      }
    }).catchError((error) {
      log("Error accepting friend request: $error", name: "FriendsReqCubit");
    });
  }

  void rejectFriendRequest(id) {
    FriendProvider.cancelFriendRequest(id).then((value) {
      if (value) {
        log("Friend request rejected successfully", name: "FriendsReqCubit");
        loadFriendRequests(); // Reload requests after rejecting
      } else {
        log("Failed to reject friend request", name: "FriendsReqCubit");
      }
    }).catchError((error) {
      log("Error rejecting friend request: $error", name: "FriendsReqCubit");
    });
  }
}
