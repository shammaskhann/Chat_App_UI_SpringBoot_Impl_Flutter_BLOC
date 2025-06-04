// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friendreq_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FriendreqModel _$FriendreqModelFromJson(Map<String, dynamic> json) {
  return _FriendreqModel.fromJson(json);
}

/// @nodoc
mixin _$FriendreqModel {
  String get senderId => throw _privateConstructorUsedError;
  String get senderUsername => throw _privateConstructorUsedError;
  String get senderEmail => throw _privateConstructorUsedError;
  DateTime get sentAt => throw _privateConstructorUsedError;

  /// Serializes this FriendreqModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FriendreqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FriendreqModelCopyWith<FriendreqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendreqModelCopyWith<$Res> {
  factory $FriendreqModelCopyWith(
          FriendreqModel value, $Res Function(FriendreqModel) then) =
      _$FriendreqModelCopyWithImpl<$Res, FriendreqModel>;
  @useResult
  $Res call(
      {String senderId,
      String senderUsername,
      String senderEmail,
      DateTime sentAt});
}

/// @nodoc
class _$FriendreqModelCopyWithImpl<$Res, $Val extends FriendreqModel>
    implements $FriendreqModelCopyWith<$Res> {
  _$FriendreqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FriendreqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? senderUsername = null,
    Object? senderEmail = null,
    Object? sentAt = null,
  }) {
    return _then(_value.copyWith(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      senderUsername: null == senderUsername
          ? _value.senderUsername
          : senderUsername // ignore: cast_nullable_to_non_nullable
              as String,
      senderEmail: null == senderEmail
          ? _value.senderEmail
          : senderEmail // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FriendreqModelImplCopyWith<$Res>
    implements $FriendreqModelCopyWith<$Res> {
  factory _$$FriendreqModelImplCopyWith(_$FriendreqModelImpl value,
          $Res Function(_$FriendreqModelImpl) then) =
      __$$FriendreqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String senderId,
      String senderUsername,
      String senderEmail,
      DateTime sentAt});
}

/// @nodoc
class __$$FriendreqModelImplCopyWithImpl<$Res>
    extends _$FriendreqModelCopyWithImpl<$Res, _$FriendreqModelImpl>
    implements _$$FriendreqModelImplCopyWith<$Res> {
  __$$FriendreqModelImplCopyWithImpl(
      _$FriendreqModelImpl _value, $Res Function(_$FriendreqModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FriendreqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? senderUsername = null,
    Object? senderEmail = null,
    Object? sentAt = null,
  }) {
    return _then(_$FriendreqModelImpl(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      senderUsername: null == senderUsername
          ? _value.senderUsername
          : senderUsername // ignore: cast_nullable_to_non_nullable
              as String,
      senderEmail: null == senderEmail
          ? _value.senderEmail
          : senderEmail // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FriendreqModelImpl implements _FriendreqModel {
  const _$FriendreqModelImpl(
      {required this.senderId,
      required this.senderUsername,
      required this.senderEmail,
      required this.sentAt});

  factory _$FriendreqModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendreqModelImplFromJson(json);

  @override
  final String senderId;
  @override
  final String senderUsername;
  @override
  final String senderEmail;
  @override
  final DateTime sentAt;

  @override
  String toString() {
    return 'FriendreqModel(senderId: $senderId, senderUsername: $senderUsername, senderEmail: $senderEmail, sentAt: $sentAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendreqModelImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderUsername, senderUsername) ||
                other.senderUsername == senderUsername) &&
            (identical(other.senderEmail, senderEmail) ||
                other.senderEmail == senderEmail) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, senderId, senderUsername, senderEmail, sentAt);

  /// Create a copy of FriendreqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendreqModelImplCopyWith<_$FriendreqModelImpl> get copyWith =>
      __$$FriendreqModelImplCopyWithImpl<_$FriendreqModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FriendreqModelImplToJson(
      this,
    );
  }
}

abstract class _FriendreqModel implements FriendreqModel {
  const factory _FriendreqModel(
      {required final String senderId,
      required final String senderUsername,
      required final String senderEmail,
      required final DateTime sentAt}) = _$FriendreqModelImpl;

  factory _FriendreqModel.fromJson(Map<String, dynamic> json) =
      _$FriendreqModelImpl.fromJson;

  @override
  String get senderId;
  @override
  String get senderUsername;
  @override
  String get senderEmail;
  @override
  DateTime get sentAt;

  /// Create a copy of FriendreqModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FriendreqModelImplCopyWith<_$FriendreqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
