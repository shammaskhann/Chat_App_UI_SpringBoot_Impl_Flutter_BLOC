part of 'dashboard_cubit_cubit.dart';

@freezed
class DashboardCubitState with _$DashboardCubitState {
  const factory DashboardCubitState({
    @Default(0) int selectedIndex,
  }) = _DashboardCubitState;

  factory DashboardCubitState.initial() => const DashboardCubitState();
}
