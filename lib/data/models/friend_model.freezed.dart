// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FriendModel _$FriendModelFromJson(Map<String, dynamic> json) {
  return _FriendModel.fromJson(json);
}

/// @nodoc
mixin _$FriendModel {
  String get id => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Serializes this FriendModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FriendModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FriendModelCopyWith<FriendModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendModelCopyWith<$Res> {
  factory $FriendModelCopyWith(
          FriendModel value, $Res Function(FriendModel) then) =
      _$FriendModelCopyWithImpl<$Res, FriendModel>;
  @useResult
  $Res call({String id, String roomId, String username, String email});
}

/// @nodoc
class _$FriendModelCopyWithImpl<$Res, $Val extends FriendModel>
    implements $FriendModelCopyWith<$Res> {
  _$FriendModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FriendModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomId = null,
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FriendModelImplCopyWith<$Res>
    implements $FriendModelCopyWith<$Res> {
  factory _$$FriendModelImplCopyWith(
          _$FriendModelImpl value, $Res Function(_$FriendModelImpl) then) =
      __$$FriendModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String roomId, String username, String email});
}

/// @nodoc
class __$$FriendModelImplCopyWithImpl<$Res>
    extends _$FriendModelCopyWithImpl<$Res, _$FriendModelImpl>
    implements _$$FriendModelImplCopyWith<$Res> {
  __$$FriendModelImplCopyWithImpl(
      _$FriendModelImpl _value, $Res Function(_$FriendModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FriendModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomId = null,
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_$FriendModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FriendModelImpl implements _FriendModel {
  const _$FriendModelImpl(
      {required this.id,
      required this.roomId,
      required this.username,
      required this.email});

  factory _$FriendModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendModelImplFromJson(json);

  @override
  final String id;
  @override
  final String roomId;
  @override
  final String username;
  @override
  final String email;

  @override
  String toString() {
    return 'FriendModel(id: $id, roomId: $roomId, username: $username, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, roomId, username, email);

  /// Create a copy of FriendModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendModelImplCopyWith<_$FriendModelImpl> get copyWith =>
      __$$FriendModelImplCopyWithImpl<_$FriendModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FriendModelImplToJson(
      this,
    );
  }
}

abstract class _FriendModel implements FriendModel {
  const factory _FriendModel(
      {required final String id,
      required final String roomId,
      required final String username,
      required final String email}) = _$FriendModelImpl;

  factory _FriendModel.fromJson(Map<String, dynamic> json) =
      _$FriendModelImpl.fromJson;

  @override
  String get id;
  @override
  String get roomId;
  @override
  String get username;
  @override
  String get email;

  /// Create a copy of FriendModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FriendModelImplCopyWith<_$FriendModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
