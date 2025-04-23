part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loginLoading() = loginLoading;
  const factory LoginState.loginSuccess(UserModel user) = loginSuccess;
  const factory LoginState.loginError(String message) = loginError;

  const factory LoginState.registerLoading() = registerLoading;
  const factory LoginState.registerSuccess(bool user) = registerSuccess;
  const factory LoginState.registerError(String message) = registerError;
}
