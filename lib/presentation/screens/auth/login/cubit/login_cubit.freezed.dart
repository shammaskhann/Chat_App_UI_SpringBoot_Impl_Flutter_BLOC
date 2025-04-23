// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(UserModel user) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(bool user) registerSuccess,
    required TResult Function(String message) registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(UserModel user)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(bool user)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(UserModel user)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(bool user)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loginLoading value) loginLoading,
    required TResult Function(loginSuccess value) loginSuccess,
    required TResult Function(loginError value) loginError,
    required TResult Function(registerLoading value) registerLoading,
    required TResult Function(registerSuccess value) registerSuccess,
    required TResult Function(registerError value) registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loginLoading value)? loginLoading,
    TResult? Function(loginSuccess value)? loginSuccess,
    TResult? Function(loginError value)? loginError,
    TResult? Function(registerLoading value)? registerLoading,
    TResult? Function(registerSuccess value)? registerSuccess,
    TResult? Function(registerError value)? registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loginLoading value)? loginLoading,
    TResult Function(loginSuccess value)? loginSuccess,
    TResult Function(loginError value)? loginError,
    TResult Function(registerLoading value)? registerLoading,
    TResult Function(registerSuccess value)? registerSuccess,
    TResult Function(registerError value)? registerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(UserModel user) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(bool user) registerSuccess,
    required TResult Function(String message) registerError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(UserModel user)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(bool user)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(UserModel user)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(bool user)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loginLoading value) loginLoading,
    required TResult Function(loginSuccess value) loginSuccess,
    required TResult Function(loginError value) loginError,
    required TResult Function(registerLoading value) registerLoading,
    required TResult Function(registerSuccess value) registerSuccess,
    required TResult Function(registerError value) registerError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loginLoading value)? loginLoading,
    TResult? Function(loginSuccess value)? loginSuccess,
    TResult? Function(loginError value)? loginError,
    TResult? Function(registerLoading value)? registerLoading,
    TResult? Function(registerSuccess value)? registerSuccess,
    TResult? Function(registerError value)? registerError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loginLoading value)? loginLoading,
    TResult Function(loginSuccess value)? loginSuccess,
    TResult Function(loginError value)? loginError,
    TResult Function(registerLoading value)? registerLoading,
    TResult Function(registerSuccess value)? registerSuccess,
    TResult Function(registerError value)? registerError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$loginLoadingImplCopyWith<$Res> {
  factory _$$loginLoadingImplCopyWith(
          _$loginLoadingImpl value, $Res Function(_$loginLoadingImpl) then) =
      __$$loginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loginLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$loginLoadingImpl>
    implements _$$loginLoadingImplCopyWith<$Res> {
  __$$loginLoadingImplCopyWithImpl(
      _$loginLoadingImpl _value, $Res Function(_$loginLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$loginLoadingImpl with DiagnosticableTreeMixin implements loginLoading {
  const _$loginLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.loginLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginState.loginLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(UserModel user) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(bool user) registerSuccess,
    required TResult Function(String message) registerError,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(UserModel user)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(bool user)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(UserModel user)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(bool user)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loginLoading value) loginLoading,
    required TResult Function(loginSuccess value) loginSuccess,
    required TResult Function(loginError value) loginError,
    required TResult Function(registerLoading value) registerLoading,
    required TResult Function(registerSuccess value) registerSuccess,
    required TResult Function(registerError value) registerError,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loginLoading value)? loginLoading,
    TResult? Function(loginSuccess value)? loginSuccess,
    TResult? Function(loginError value)? loginError,
    TResult? Function(registerLoading value)? registerLoading,
    TResult? Function(registerSuccess value)? registerSuccess,
    TResult? Function(registerError value)? registerError,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loginLoading value)? loginLoading,
    TResult Function(loginSuccess value)? loginSuccess,
    TResult Function(loginError value)? loginError,
    TResult Function(registerLoading value)? registerLoading,
    TResult Function(registerSuccess value)? registerSuccess,
    TResult Function(registerError value)? registerError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class loginLoading implements LoginState {
  const factory loginLoading() = _$loginLoadingImpl;
}

/// @nodoc
abstract class _$$loginSuccessImplCopyWith<$Res> {
  factory _$$loginSuccessImplCopyWith(
          _$loginSuccessImpl value, $Res Function(_$loginSuccessImpl) then) =
      __$$loginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$loginSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$loginSuccessImpl>
    implements _$$loginSuccessImplCopyWith<$Res> {
  __$$loginSuccessImplCopyWithImpl(
      _$loginSuccessImpl _value, $Res Function(_$loginSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$loginSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$loginSuccessImpl with DiagnosticableTreeMixin implements loginSuccess {
  const _$loginSuccessImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.loginSuccess(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.loginSuccess'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$loginSuccessImplCopyWith<_$loginSuccessImpl> get copyWith =>
      __$$loginSuccessImplCopyWithImpl<_$loginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(UserModel user) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(bool user) registerSuccess,
    required TResult Function(String message) registerError,
  }) {
    return loginSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(UserModel user)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(bool user)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) {
    return loginSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(UserModel user)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(bool user)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loginLoading value) loginLoading,
    required TResult Function(loginSuccess value) loginSuccess,
    required TResult Function(loginError value) loginError,
    required TResult Function(registerLoading value) registerLoading,
    required TResult Function(registerSuccess value) registerSuccess,
    required TResult Function(registerError value) registerError,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loginLoading value)? loginLoading,
    TResult? Function(loginSuccess value)? loginSuccess,
    TResult? Function(loginError value)? loginError,
    TResult? Function(registerLoading value)? registerLoading,
    TResult? Function(registerSuccess value)? registerSuccess,
    TResult? Function(registerError value)? registerError,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loginLoading value)? loginLoading,
    TResult Function(loginSuccess value)? loginSuccess,
    TResult Function(loginError value)? loginError,
    TResult Function(registerLoading value)? registerLoading,
    TResult Function(registerSuccess value)? registerSuccess,
    TResult Function(registerError value)? registerError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class loginSuccess implements LoginState {
  const factory loginSuccess(final UserModel user) = _$loginSuccessImpl;

  UserModel get user;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$loginSuccessImplCopyWith<_$loginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loginErrorImplCopyWith<$Res> {
  factory _$$loginErrorImplCopyWith(
          _$loginErrorImpl value, $Res Function(_$loginErrorImpl) then) =
      __$$loginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$loginErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$loginErrorImpl>
    implements _$$loginErrorImplCopyWith<$Res> {
  __$$loginErrorImplCopyWithImpl(
      _$loginErrorImpl _value, $Res Function(_$loginErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$loginErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$loginErrorImpl with DiagnosticableTreeMixin implements loginError {
  const _$loginErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.loginError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.loginError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$loginErrorImplCopyWith<_$loginErrorImpl> get copyWith =>
      __$$loginErrorImplCopyWithImpl<_$loginErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(UserModel user) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(bool user) registerSuccess,
    required TResult Function(String message) registerError,
  }) {
    return loginError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(UserModel user)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(bool user)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) {
    return loginError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(UserModel user)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(bool user)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loginLoading value) loginLoading,
    required TResult Function(loginSuccess value) loginSuccess,
    required TResult Function(loginError value) loginError,
    required TResult Function(registerLoading value) registerLoading,
    required TResult Function(registerSuccess value) registerSuccess,
    required TResult Function(registerError value) registerError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loginLoading value)? loginLoading,
    TResult? Function(loginSuccess value)? loginSuccess,
    TResult? Function(loginError value)? loginError,
    TResult? Function(registerLoading value)? registerLoading,
    TResult? Function(registerSuccess value)? registerSuccess,
    TResult? Function(registerError value)? registerError,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loginLoading value)? loginLoading,
    TResult Function(loginSuccess value)? loginSuccess,
    TResult Function(loginError value)? loginError,
    TResult Function(registerLoading value)? registerLoading,
    TResult Function(registerSuccess value)? registerSuccess,
    TResult Function(registerError value)? registerError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class loginError implements LoginState {
  const factory loginError(final String message) = _$loginErrorImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$loginErrorImplCopyWith<_$loginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$registerLoadingImplCopyWith<$Res> {
  factory _$$registerLoadingImplCopyWith(_$registerLoadingImpl value,
          $Res Function(_$registerLoadingImpl) then) =
      __$$registerLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$registerLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$registerLoadingImpl>
    implements _$$registerLoadingImplCopyWith<$Res> {
  __$$registerLoadingImplCopyWithImpl(
      _$registerLoadingImpl _value, $Res Function(_$registerLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$registerLoadingImpl
    with DiagnosticableTreeMixin
    implements registerLoading {
  const _$registerLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.registerLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginState.registerLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$registerLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(UserModel user) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(bool user) registerSuccess,
    required TResult Function(String message) registerError,
  }) {
    return registerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(UserModel user)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(bool user)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) {
    return registerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(UserModel user)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(bool user)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loginLoading value) loginLoading,
    required TResult Function(loginSuccess value) loginSuccess,
    required TResult Function(loginError value) loginError,
    required TResult Function(registerLoading value) registerLoading,
    required TResult Function(registerSuccess value) registerSuccess,
    required TResult Function(registerError value) registerError,
  }) {
    return registerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loginLoading value)? loginLoading,
    TResult? Function(loginSuccess value)? loginSuccess,
    TResult? Function(loginError value)? loginError,
    TResult? Function(registerLoading value)? registerLoading,
    TResult? Function(registerSuccess value)? registerSuccess,
    TResult? Function(registerError value)? registerError,
  }) {
    return registerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loginLoading value)? loginLoading,
    TResult Function(loginSuccess value)? loginSuccess,
    TResult Function(loginError value)? loginError,
    TResult Function(registerLoading value)? registerLoading,
    TResult Function(registerSuccess value)? registerSuccess,
    TResult Function(registerError value)? registerError,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading(this);
    }
    return orElse();
  }
}

abstract class registerLoading implements LoginState {
  const factory registerLoading() = _$registerLoadingImpl;
}

/// @nodoc
abstract class _$$registerSuccessImplCopyWith<$Res> {
  factory _$$registerSuccessImplCopyWith(_$registerSuccessImpl value,
          $Res Function(_$registerSuccessImpl) then) =
      __$$registerSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool user});
}

/// @nodoc
class __$$registerSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$registerSuccessImpl>
    implements _$$registerSuccessImplCopyWith<$Res> {
  __$$registerSuccessImplCopyWithImpl(
      _$registerSuccessImpl _value, $Res Function(_$registerSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$registerSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$registerSuccessImpl
    with DiagnosticableTreeMixin
    implements registerSuccess {
  const _$registerSuccessImpl(this.user);

  @override
  final bool user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.registerSuccess(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.registerSuccess'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$registerSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$registerSuccessImplCopyWith<_$registerSuccessImpl> get copyWith =>
      __$$registerSuccessImplCopyWithImpl<_$registerSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(UserModel user) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(bool user) registerSuccess,
    required TResult Function(String message) registerError,
  }) {
    return registerSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(UserModel user)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(bool user)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) {
    return registerSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(UserModel user)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(bool user)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loginLoading value) loginLoading,
    required TResult Function(loginSuccess value) loginSuccess,
    required TResult Function(loginError value) loginError,
    required TResult Function(registerLoading value) registerLoading,
    required TResult Function(registerSuccess value) registerSuccess,
    required TResult Function(registerError value) registerError,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loginLoading value)? loginLoading,
    TResult? Function(loginSuccess value)? loginSuccess,
    TResult? Function(loginError value)? loginError,
    TResult? Function(registerLoading value)? registerLoading,
    TResult? Function(registerSuccess value)? registerSuccess,
    TResult? Function(registerError value)? registerError,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loginLoading value)? loginLoading,
    TResult Function(loginSuccess value)? loginSuccess,
    TResult Function(loginError value)? loginError,
    TResult Function(registerLoading value)? registerLoading,
    TResult Function(registerSuccess value)? registerSuccess,
    TResult Function(registerError value)? registerError,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class registerSuccess implements LoginState {
  const factory registerSuccess(final bool user) = _$registerSuccessImpl;

  bool get user;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$registerSuccessImplCopyWith<_$registerSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$registerErrorImplCopyWith<$Res> {
  factory _$$registerErrorImplCopyWith(
          _$registerErrorImpl value, $Res Function(_$registerErrorImpl) then) =
      __$$registerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$registerErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$registerErrorImpl>
    implements _$$registerErrorImplCopyWith<$Res> {
  __$$registerErrorImplCopyWithImpl(
      _$registerErrorImpl _value, $Res Function(_$registerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$registerErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$registerErrorImpl
    with DiagnosticableTreeMixin
    implements registerError {
  const _$registerErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.registerError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.registerError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$registerErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$registerErrorImplCopyWith<_$registerErrorImpl> get copyWith =>
      __$$registerErrorImplCopyWithImpl<_$registerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(UserModel user) loginSuccess,
    required TResult Function(String message) loginError,
    required TResult Function() registerLoading,
    required TResult Function(bool user) registerSuccess,
    required TResult Function(String message) registerError,
  }) {
    return registerError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(UserModel user)? loginSuccess,
    TResult? Function(String message)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(bool user)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) {
    return registerError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(UserModel user)? loginSuccess,
    TResult Function(String message)? loginError,
    TResult Function()? registerLoading,
    TResult Function(bool user)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loginLoading value) loginLoading,
    required TResult Function(loginSuccess value) loginSuccess,
    required TResult Function(loginError value) loginError,
    required TResult Function(registerLoading value) registerLoading,
    required TResult Function(registerSuccess value) registerSuccess,
    required TResult Function(registerError value) registerError,
  }) {
    return registerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loginLoading value)? loginLoading,
    TResult? Function(loginSuccess value)? loginSuccess,
    TResult? Function(loginError value)? loginError,
    TResult? Function(registerLoading value)? registerLoading,
    TResult? Function(registerSuccess value)? registerSuccess,
    TResult? Function(registerError value)? registerError,
  }) {
    return registerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loginLoading value)? loginLoading,
    TResult Function(loginSuccess value)? loginSuccess,
    TResult Function(loginError value)? loginError,
    TResult Function(registerLoading value)? registerLoading,
    TResult Function(registerSuccess value)? registerSuccess,
    TResult Function(registerError value)? registerError,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(this);
    }
    return orElse();
  }
}

abstract class registerError implements LoginState {
  const factory registerError(final String message) = _$registerErrorImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$registerErrorImplCopyWith<_$registerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
