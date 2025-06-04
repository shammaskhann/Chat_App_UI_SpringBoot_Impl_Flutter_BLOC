// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searched_friend_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchedFriendModel _$SearchedFriendModelFromJson(Map<String, dynamic> json) {
  return _SearchedFriendModel.fromJson(json);
}

/// @nodoc
mixin _$SearchedFriendModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get deviceToken => throw _privateConstructorUsedError;
  List<FriendModel> get mutualFriends => throw _privateConstructorUsedError;

  /// Serializes this SearchedFriendModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchedFriendModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchedFriendModelCopyWith<SearchedFriendModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedFriendModelCopyWith<$Res> {
  factory $SearchedFriendModelCopyWith(
          SearchedFriendModel value, $Res Function(SearchedFriendModel) then) =
      _$SearchedFriendModelCopyWithImpl<$Res, SearchedFriendModel>;
  @useResult
  $Res call(
      {String id,
      String username,
      String email,
      String? deviceToken,
      List<FriendModel> mutualFriends});
}

/// @nodoc
class _$SearchedFriendModelCopyWithImpl<$Res, $Val extends SearchedFriendModel>
    implements $SearchedFriendModelCopyWith<$Res> {
  _$SearchedFriendModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchedFriendModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? deviceToken = freezed,
    Object? mutualFriends = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      mutualFriends: null == mutualFriends
          ? _value.mutualFriends
          : mutualFriends // ignore: cast_nullable_to_non_nullable
              as List<FriendModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchedFriendModelImplCopyWith<$Res>
    implements $SearchedFriendModelCopyWith<$Res> {
  factory _$$SearchedFriendModelImplCopyWith(_$SearchedFriendModelImpl value,
          $Res Function(_$SearchedFriendModelImpl) then) =
      __$$SearchedFriendModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String email,
      String? deviceToken,
      List<FriendModel> mutualFriends});
}

/// @nodoc
class __$$SearchedFriendModelImplCopyWithImpl<$Res>
    extends _$SearchedFriendModelCopyWithImpl<$Res, _$SearchedFriendModelImpl>
    implements _$$SearchedFriendModelImplCopyWith<$Res> {
  __$$SearchedFriendModelImplCopyWithImpl(_$SearchedFriendModelImpl _value,
      $Res Function(_$SearchedFriendModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchedFriendModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? deviceToken = freezed,
    Object? mutualFriends = null,
  }) {
    return _then(_$SearchedFriendModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      mutualFriends: null == mutualFriends
          ? _value._mutualFriends
          : mutualFriends // ignore: cast_nullable_to_non_nullable
              as List<FriendModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchedFriendModelImpl implements _SearchedFriendModel {
  const _$SearchedFriendModelImpl(
      {required this.id,
      required this.username,
      required this.email,
      required this.deviceToken,
      required final List<FriendModel> mutualFriends})
      : _mutualFriends = mutualFriends;

  factory _$SearchedFriendModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchedFriendModelImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String? deviceToken;
  final List<FriendModel> _mutualFriends;
  @override
  List<FriendModel> get mutualFriends {
    if (_mutualFriends is EqualUnmodifiableListView) return _mutualFriends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mutualFriends);
  }

  @override
  String toString() {
    return 'SearchedFriendModel(id: $id, username: $username, email: $email, deviceToken: $deviceToken, mutualFriends: $mutualFriends)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedFriendModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            const DeepCollectionEquality()
                .equals(other._mutualFriends, _mutualFriends));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, deviceToken,
      const DeepCollectionEquality().hash(_mutualFriends));

  /// Create a copy of SearchedFriendModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedFriendModelImplCopyWith<_$SearchedFriendModelImpl> get copyWith =>
      __$$SearchedFriendModelImplCopyWithImpl<_$SearchedFriendModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchedFriendModelImplToJson(
      this,
    );
  }
}

abstract class _SearchedFriendModel implements SearchedFriendModel {
  const factory _SearchedFriendModel(
          {required final String id,
          required final String username,
          required final String email,
          required final String? deviceToken,
          required final List<FriendModel> mutualFriends}) =
      _$SearchedFriendModelImpl;

  factory _SearchedFriendModel.fromJson(Map<String, dynamic> json) =
      _$SearchedFriendModelImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get email;
  @override
  String? get deviceToken;
  @override
  List<FriendModel> get mutualFriends;

  /// Create a copy of SearchedFriendModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchedFriendModelImplCopyWith<_$SearchedFriendModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
