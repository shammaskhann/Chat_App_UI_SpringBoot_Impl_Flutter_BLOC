// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFriends,
    required TResult Function(List<FriendModel> friends) loadedFriends,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFriends,
    TResult? Function(List<FriendModel> friends)? loadedFriends,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFriends,
    TResult Function(List<FriendModel> friends)? loadedFriends,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(friendsLoading value) loadingFriends,
    required TResult Function(loadedFriends value) loadedFriends,
    required TResult Function(error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(friendsLoading value)? loadingFriends,
    TResult? Function(loadedFriends value)? loadedFriends,
    TResult? Function(error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(friendsLoading value)? loadingFriends,
    TResult Function(loadedFriends value)? loadedFriends,
    TResult Function(error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
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
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
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
    required TResult Function() loadingFriends,
    required TResult Function(List<FriendModel> friends) loadedFriends,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFriends,
    TResult? Function(List<FriendModel> friends)? loadedFriends,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFriends,
    TResult Function(List<FriendModel> friends)? loadedFriends,
    TResult Function(String message)? error,
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
    required TResult Function(friendsLoading value) loadingFriends,
    required TResult Function(loadedFriends value) loadedFriends,
    required TResult Function(error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(friendsLoading value)? loadingFriends,
    TResult? Function(loadedFriends value)? loadedFriends,
    TResult? Function(error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(friendsLoading value)? loadingFriends,
    TResult Function(loadedFriends value)? loadedFriends,
    TResult Function(error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$friendsLoadingImplCopyWith<$Res> {
  factory _$$friendsLoadingImplCopyWith(_$friendsLoadingImpl value,
          $Res Function(_$friendsLoadingImpl) then) =
      __$$friendsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$friendsLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$friendsLoadingImpl>
    implements _$$friendsLoadingImplCopyWith<$Res> {
  __$$friendsLoadingImplCopyWithImpl(
      _$friendsLoadingImpl _value, $Res Function(_$friendsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$friendsLoadingImpl implements friendsLoading {
  const _$friendsLoadingImpl();

  @override
  String toString() {
    return 'HomeState.loadingFriends()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$friendsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFriends,
    required TResult Function(List<FriendModel> friends) loadedFriends,
    required TResult Function(String message) error,
  }) {
    return loadingFriends();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFriends,
    TResult? Function(List<FriendModel> friends)? loadedFriends,
    TResult? Function(String message)? error,
  }) {
    return loadingFriends?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFriends,
    TResult Function(List<FriendModel> friends)? loadedFriends,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadingFriends != null) {
      return loadingFriends();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(friendsLoading value) loadingFriends,
    required TResult Function(loadedFriends value) loadedFriends,
    required TResult Function(error value) error,
  }) {
    return loadingFriends(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(friendsLoading value)? loadingFriends,
    TResult? Function(loadedFriends value)? loadedFriends,
    TResult? Function(error value)? error,
  }) {
    return loadingFriends?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(friendsLoading value)? loadingFriends,
    TResult Function(loadedFriends value)? loadedFriends,
    TResult Function(error value)? error,
    required TResult orElse(),
  }) {
    if (loadingFriends != null) {
      return loadingFriends(this);
    }
    return orElse();
  }
}

abstract class friendsLoading implements HomeState {
  const factory friendsLoading() = _$friendsLoadingImpl;
}

/// @nodoc
abstract class _$$loadedFriendsImplCopyWith<$Res> {
  factory _$$loadedFriendsImplCopyWith(
          _$loadedFriendsImpl value, $Res Function(_$loadedFriendsImpl) then) =
      __$$loadedFriendsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FriendModel> friends});
}

/// @nodoc
class __$$loadedFriendsImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$loadedFriendsImpl>
    implements _$$loadedFriendsImplCopyWith<$Res> {
  __$$loadedFriendsImplCopyWithImpl(
      _$loadedFriendsImpl _value, $Res Function(_$loadedFriendsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friends = null,
  }) {
    return _then(_$loadedFriendsImpl(
      null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<FriendModel>,
    ));
  }
}

/// @nodoc

class _$loadedFriendsImpl implements loadedFriends {
  const _$loadedFriendsImpl(final List<FriendModel> friends)
      : _friends = friends;

  final List<FriendModel> _friends;
  @override
  List<FriendModel> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  @override
  String toString() {
    return 'HomeState.loadedFriends(friends: $friends)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadedFriendsImpl &&
            const DeepCollectionEquality().equals(other._friends, _friends));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_friends));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$loadedFriendsImplCopyWith<_$loadedFriendsImpl> get copyWith =>
      __$$loadedFriendsImplCopyWithImpl<_$loadedFriendsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFriends,
    required TResult Function(List<FriendModel> friends) loadedFriends,
    required TResult Function(String message) error,
  }) {
    return loadedFriends(friends);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFriends,
    TResult? Function(List<FriendModel> friends)? loadedFriends,
    TResult? Function(String message)? error,
  }) {
    return loadedFriends?.call(friends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFriends,
    TResult Function(List<FriendModel> friends)? loadedFriends,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedFriends != null) {
      return loadedFriends(friends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(friendsLoading value) loadingFriends,
    required TResult Function(loadedFriends value) loadedFriends,
    required TResult Function(error value) error,
  }) {
    return loadedFriends(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(friendsLoading value)? loadingFriends,
    TResult? Function(loadedFriends value)? loadedFriends,
    TResult? Function(error value)? error,
  }) {
    return loadedFriends?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(friendsLoading value)? loadingFriends,
    TResult Function(loadedFriends value)? loadedFriends,
    TResult Function(error value)? error,
    required TResult orElse(),
  }) {
    if (loadedFriends != null) {
      return loadedFriends(this);
    }
    return orElse();
  }
}

abstract class loadedFriends implements HomeState {
  const factory loadedFriends(final List<FriendModel> friends) =
      _$loadedFriendsImpl;

  List<FriendModel> get friends;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$loadedFriendsImplCopyWith<_$loadedFriendsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$errorImplCopyWith<$Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl value, $Res Function(_$errorImpl) then) =
      __$$errorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$errorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$errorImpl>
    implements _$$errorImplCopyWith<$Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl _value, $Res Function(_$errorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$errorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$errorImpl implements error {
  const _$errorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      __$$errorImplCopyWithImpl<_$errorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFriends,
    required TResult Function(List<FriendModel> friends) loadedFriends,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFriends,
    TResult? Function(List<FriendModel> friends)? loadedFriends,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFriends,
    TResult Function(List<FriendModel> friends)? loadedFriends,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(friendsLoading value) loadingFriends,
    required TResult Function(loadedFriends value) loadedFriends,
    required TResult Function(error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(friendsLoading value)? loadingFriends,
    TResult? Function(loadedFriends value)? loadedFriends,
    TResult? Function(error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(friendsLoading value)? loadingFriends,
    TResult Function(loadedFriends value)? loadedFriends,
    TResult Function(error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class error implements HomeState {
  const factory error(final String message) = _$errorImpl;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
