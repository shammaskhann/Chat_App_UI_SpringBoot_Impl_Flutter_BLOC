import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:springboot_test_bench/data/models/chatroom_model.dart';
import 'package:springboot_test_bench/data/models/friend_model.dart';
import 'package:springboot_test_bench/data/provider/chat_provider.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  Future<void> fetchFriends() async {
    emit(const HomeState.loadingFriends());
    try {
      final List<FriendModel> friends = await FriendProvider.getFriends();
      emit(HomeState.loadedFriends(friends));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}
