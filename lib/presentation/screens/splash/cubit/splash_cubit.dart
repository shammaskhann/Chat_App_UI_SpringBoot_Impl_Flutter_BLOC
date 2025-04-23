import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.loading());

  Future<void> checkAuthStatus() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate loading

    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    if (token != null && token.isNotEmpty) {
      emit(const SplashState.authenticated());
    } else {
      emit(const SplashState.unauthenticated());
    }
  }
}
