class ApiConstants {
  static const String BASE_URL = "http://192.168.18.136:8080/api/";

  static const String AUTH_REGISTER = "${BASE_URL}auth/register";
  static const String AUTH_LOGIN = "${BASE_URL}auth/login";
  static const String JOIN_CHATROOM = "${BASE_URL}rooms/";
  static const String GET_FRIENDS = "${BASE_URL}friend/get-friends";
  static const String GET_FRIENDS_REQUESTS = "${BASE_URL}user/friend-requests";
  static const String GET_ACCEPT_FRIEND_REQUEST =
      "${BASE_URL}user/accept-friend-request";
  static const String GET_CANCEL_FRIEND_REQUEST =
      "${BASE_URL}user/cancel-friend-request";
  static const String GET_SEND_FRIEND_REQUEST =
      "${BASE_URL}user/send-friend-requests";

  static const String GET_ALL_USERS = "${BASE_URL}friend/get-all-users";
}
