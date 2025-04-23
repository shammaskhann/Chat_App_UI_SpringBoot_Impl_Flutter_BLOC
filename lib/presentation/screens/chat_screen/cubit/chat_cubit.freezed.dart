// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String id) loadId,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String id)? loadId,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String id)? loadId,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(chatLoading value) loading,
    required TResult Function(chatLoadId value) loadId,
    required TResult Function(chatLoaded value) loaded,
    required TResult Function(chatError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(chatLoading value)? loading,
    TResult? Function(chatLoadId value)? loadId,
    TResult? Function(chatLoaded value)? loaded,
    TResult? Function(chatError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(chatLoading value)? loading,
    TResult Function(chatLoadId value)? loadId,
    TResult Function(chatLoaded value)? loaded,
    TResult Function(chatError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
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
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
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
    required TResult Function() loading,
    required TResult Function(String id) loadId,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String id)? loadId,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String id)? loadId,
    TResult Function(List<Message> messages)? loaded,
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
    required TResult Function(chatLoading value) loading,
    required TResult Function(chatLoadId value) loadId,
    required TResult Function(chatLoaded value) loaded,
    required TResult Function(chatError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(chatLoading value)? loading,
    TResult? Function(chatLoadId value)? loadId,
    TResult? Function(chatLoaded value)? loaded,
    TResult? Function(chatError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(chatLoading value)? loading,
    TResult Function(chatLoadId value)? loadId,
    TResult Function(chatLoaded value)? loaded,
    TResult Function(chatError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$chatLoadingImplCopyWith<$Res> {
  factory _$$chatLoadingImplCopyWith(
          _$chatLoadingImpl value, $Res Function(_$chatLoadingImpl) then) =
      __$$chatLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$chatLoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$chatLoadingImpl>
    implements _$$chatLoadingImplCopyWith<$Res> {
  __$$chatLoadingImplCopyWithImpl(
      _$chatLoadingImpl _value, $Res Function(_$chatLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$chatLoadingImpl implements chatLoading {
  const _$chatLoadingImpl();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$chatLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String id) loadId,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String id)? loadId,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String id)? loadId,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(chatLoading value) loading,
    required TResult Function(chatLoadId value) loadId,
    required TResult Function(chatLoaded value) loaded,
    required TResult Function(chatError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(chatLoading value)? loading,
    TResult? Function(chatLoadId value)? loadId,
    TResult? Function(chatLoaded value)? loaded,
    TResult? Function(chatError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(chatLoading value)? loading,
    TResult Function(chatLoadId value)? loadId,
    TResult Function(chatLoaded value)? loaded,
    TResult Function(chatError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class chatLoading implements ChatState {
  const factory chatLoading() = _$chatLoadingImpl;
}

/// @nodoc
abstract class _$$chatLoadIdImplCopyWith<$Res> {
  factory _$$chatLoadIdImplCopyWith(
          _$chatLoadIdImpl value, $Res Function(_$chatLoadIdImpl) then) =
      __$$chatLoadIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$chatLoadIdImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$chatLoadIdImpl>
    implements _$$chatLoadIdImplCopyWith<$Res> {
  __$$chatLoadIdImplCopyWithImpl(
      _$chatLoadIdImpl _value, $Res Function(_$chatLoadIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$chatLoadIdImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$chatLoadIdImpl implements chatLoadId {
  const _$chatLoadIdImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ChatState.loadId(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$chatLoadIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$chatLoadIdImplCopyWith<_$chatLoadIdImpl> get copyWith =>
      __$$chatLoadIdImplCopyWithImpl<_$chatLoadIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String id) loadId,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String message) error,
  }) {
    return loadId(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String id)? loadId,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loadId?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String id)? loadId,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadId != null) {
      return loadId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(chatLoading value) loading,
    required TResult Function(chatLoadId value) loadId,
    required TResult Function(chatLoaded value) loaded,
    required TResult Function(chatError value) error,
  }) {
    return loadId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(chatLoading value)? loading,
    TResult? Function(chatLoadId value)? loadId,
    TResult? Function(chatLoaded value)? loaded,
    TResult? Function(chatError value)? error,
  }) {
    return loadId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(chatLoading value)? loading,
    TResult Function(chatLoadId value)? loadId,
    TResult Function(chatLoaded value)? loaded,
    TResult Function(chatError value)? error,
    required TResult orElse(),
  }) {
    if (loadId != null) {
      return loadId(this);
    }
    return orElse();
  }
}

abstract class chatLoadId implements ChatState {
  const factory chatLoadId(final String id) = _$chatLoadIdImpl;

  String get id;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$chatLoadIdImplCopyWith<_$chatLoadIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$chatLoadedImplCopyWith<$Res> {
  factory _$$chatLoadedImplCopyWith(
          _$chatLoadedImpl value, $Res Function(_$chatLoadedImpl) then) =
      __$$chatLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$chatLoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$chatLoadedImpl>
    implements _$$chatLoadedImplCopyWith<$Res> {
  __$$chatLoadedImplCopyWithImpl(
      _$chatLoadedImpl _value, $Res Function(_$chatLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$chatLoadedImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$chatLoadedImpl implements chatLoaded {
  const _$chatLoadedImpl(final List<Message> messages) : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.loaded(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$chatLoadedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$chatLoadedImplCopyWith<_$chatLoadedImpl> get copyWith =>
      __$$chatLoadedImplCopyWithImpl<_$chatLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String id) loadId,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String id)? loadId,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String id)? loadId,
    TResult Function(List<Message> messages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(chatLoading value) loading,
    required TResult Function(chatLoadId value) loadId,
    required TResult Function(chatLoaded value) loaded,
    required TResult Function(chatError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(chatLoading value)? loading,
    TResult? Function(chatLoadId value)? loadId,
    TResult? Function(chatLoaded value)? loaded,
    TResult? Function(chatError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(chatLoading value)? loading,
    TResult Function(chatLoadId value)? loadId,
    TResult Function(chatLoaded value)? loaded,
    TResult Function(chatError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class chatLoaded implements ChatState {
  const factory chatLoaded(final List<Message> messages) = _$chatLoadedImpl;

  List<Message> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$chatLoadedImplCopyWith<_$chatLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$chatErrorImplCopyWith<$Res> {
  factory _$$chatErrorImplCopyWith(
          _$chatErrorImpl value, $Res Function(_$chatErrorImpl) then) =
      __$$chatErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$chatErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$chatErrorImpl>
    implements _$$chatErrorImplCopyWith<$Res> {
  __$$chatErrorImplCopyWithImpl(
      _$chatErrorImpl _value, $Res Function(_$chatErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$chatErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$chatErrorImpl implements chatError {
  const _$chatErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$chatErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$chatErrorImplCopyWith<_$chatErrorImpl> get copyWith =>
      __$$chatErrorImplCopyWithImpl<_$chatErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String id) loadId,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String id)? loadId,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String id)? loadId,
    TResult Function(List<Message> messages)? loaded,
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
    required TResult Function(chatLoading value) loading,
    required TResult Function(chatLoadId value) loadId,
    required TResult Function(chatLoaded value) loaded,
    required TResult Function(chatError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(chatLoading value)? loading,
    TResult? Function(chatLoadId value)? loadId,
    TResult? Function(chatLoaded value)? loaded,
    TResult? Function(chatError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(chatLoading value)? loading,
    TResult Function(chatLoadId value)? loadId,
    TResult Function(chatLoaded value)? loaded,
    TResult Function(chatError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class chatError implements ChatState {
  const factory chatError(final String message) = _$chatErrorImpl;

  String get message;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$chatErrorImplCopyWith<_$chatErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
