import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_cubit_state.dart';
part 'dashboard_cubit_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardCubitState> {
  DashboardCubit() : super(DashboardCubitState.initial());

  void changeTab(int index) {
    emit(state.copyWith(selectedIndex: index));
  }
}
