part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.loading() = SplashLoading;
  const factory SplashState.authenticated() = SplashAuthenticated;
  const factory SplashState.unauthenticated() = SplashUnauthenticated;
}
