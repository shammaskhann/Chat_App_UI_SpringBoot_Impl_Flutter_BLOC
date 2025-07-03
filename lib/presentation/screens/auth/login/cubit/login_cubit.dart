import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:springboot_test_bench/data/models/chatroom_model.dart';
import 'package:springboot_test_bench/data/models/user_model.dart';
import 'package:springboot_test_bench/data/provider/auth_provider.dart';
import 'package:springboot_test_bench/data/provider/room_provider.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthProvider _authProvider;
  LoginCubit(
    this._authProvider,
  ) : super(const LoginState.initial());

  void login(String email, String password) async {
    try {
      emit(const LoginState.loginLoading());
      // final ChatRoom room = await RoomProvider.joinChatroom(roomId);
      final UserModel user = await _authProvider.loginUser(email, password);
      emit(LoginState.loginSuccess(user));
      log("User logged in: ${user.toString()}");
    } catch (e) {
      emit(LoginState.loginError(e.toString()));
    }
  }

  void register(
      String username, String email, String password, File? profilePic) async {
    emit(const LoginState.registerLoading());

    try {
      final bool user = await AuthProvider.registerUser(
          username, email, password, profilePic);
      emit(LoginState.registerSuccess(user));
      log("User registered: ${user.toString()}");
    } catch (e) {
      emit(LoginState.registerError(e.toString()));
    }
  }
}
