part of 'chat_cubit.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = chatLoading;
  const factory ChatState.loadId(String id) = chatLoadId;
  const factory ChatState.loaded(List<Message> messages) = chatLoaded;
  const factory ChatState.error(String message) = chatError;
}
