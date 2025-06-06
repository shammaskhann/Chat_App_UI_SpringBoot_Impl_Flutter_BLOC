// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_cubit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardCubitState {
  int get selectedIndex => throw _privateConstructorUsedError;

  /// Create a copy of DashboardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardCubitStateCopyWith<DashboardCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardCubitStateCopyWith<$Res> {
  factory $DashboardCubitStateCopyWith(
          DashboardCubitState value, $Res Function(DashboardCubitState) then) =
      _$DashboardCubitStateCopyWithImpl<$Res, DashboardCubitState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$DashboardCubitStateCopyWithImpl<$Res, $Val extends DashboardCubitState>
    implements $DashboardCubitStateCopyWith<$Res> {
  _$DashboardCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardCubitStateImplCopyWith<$Res>
    implements $DashboardCubitStateCopyWith<$Res> {
  factory _$$DashboardCubitStateImplCopyWith(_$DashboardCubitStateImpl value,
          $Res Function(_$DashboardCubitStateImpl) then) =
      __$$DashboardCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$DashboardCubitStateImplCopyWithImpl<$Res>
    extends _$DashboardCubitStateCopyWithImpl<$Res, _$DashboardCubitStateImpl>
    implements _$$DashboardCubitStateImplCopyWith<$Res> {
  __$$DashboardCubitStateImplCopyWithImpl(_$DashboardCubitStateImpl _value,
      $Res Function(_$DashboardCubitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$DashboardCubitStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DashboardCubitStateImpl implements _DashboardCubitState {
  const _$DashboardCubitStateImpl({this.selectedIndex = 0});

  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'DashboardCubitState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardCubitStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  /// Create a copy of DashboardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardCubitStateImplCopyWith<_$DashboardCubitStateImpl> get copyWith =>
      __$$DashboardCubitStateImplCopyWithImpl<_$DashboardCubitStateImpl>(
          this, _$identity);
}

abstract class _DashboardCubitState implements DashboardCubitState {
  const factory _DashboardCubitState({final int selectedIndex}) =
      _$DashboardCubitStateImpl;

  @override
  int get selectedIndex;

  /// Create a copy of DashboardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardCubitStateImplCopyWith<_$DashboardCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
