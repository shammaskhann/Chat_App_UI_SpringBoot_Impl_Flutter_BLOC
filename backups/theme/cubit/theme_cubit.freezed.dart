// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'theme_cubit.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// /// @nodoc
// mixin _$ThemeState {
//   bool get isDarkMode => throw _privateConstructorUsedError;
//   ThemeData get lightTheme => throw _privateConstructorUsedError;
//   ThemeData get darkTheme => throw _privateConstructorUsedError;

//   /// Create a copy of ThemeState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   $ThemeStateCopyWith<ThemeState> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $ThemeStateCopyWith<$Res> {
//   factory $ThemeStateCopyWith(
//           ThemeState value, $Res Function(ThemeState) then) =
//       _$ThemeStateCopyWithImpl<$Res, ThemeState>;
//   @useResult
//   $Res call({bool isDarkMode, ThemeData lightTheme, ThemeData darkTheme});
// }

// /// @nodoc
// class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
//     implements $ThemeStateCopyWith<$Res> {
//   _$ThemeStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of ThemeState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? isDarkMode = null,
//     Object? lightTheme = null,
//     Object? darkTheme = null,
//   }) {
//     return _then(_value.copyWith(
//       isDarkMode: null == isDarkMode
//           ? _value.isDarkMode
//           : isDarkMode // ignore: cast_nullable_to_non_nullable
//               as bool,
//       lightTheme: null == lightTheme
//           ? _value.lightTheme
//           : lightTheme // ignore: cast_nullable_to_non_nullable
//               as ThemeData,
//       darkTheme: null == darkTheme
//           ? _value.darkTheme
//           : darkTheme // ignore: cast_nullable_to_non_nullable
//               as ThemeData,
//     ) as $Val);
//   }
// }

// /// @nodoc
// abstract class _$$ThemeStateImplCopyWith<$Res>
//     implements $ThemeStateCopyWith<$Res> {
//   factory _$$ThemeStateImplCopyWith(
//           _$ThemeStateImpl value, $Res Function(_$ThemeStateImpl) then) =
//       __$$ThemeStateImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call({bool isDarkMode, ThemeData lightTheme, ThemeData darkTheme});
// }

// /// @nodoc
// class __$$ThemeStateImplCopyWithImpl<$Res>
//     extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateImpl>
//     implements _$$ThemeStateImplCopyWith<$Res> {
//   __$$ThemeStateImplCopyWithImpl(
//       _$ThemeStateImpl _value, $Res Function(_$ThemeStateImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of ThemeState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? isDarkMode = null,
//     Object? lightTheme = null,
//     Object? darkTheme = null,
//   }) {
//     return _then(_$ThemeStateImpl(
//       isDarkMode: null == isDarkMode
//           ? _value.isDarkMode
//           : isDarkMode // ignore: cast_nullable_to_non_nullable
//               as bool,
//       lightTheme: null == lightTheme
//           ? _value.lightTheme
//           : lightTheme // ignore: cast_nullable_to_non_nullable
//               as ThemeData,
//       darkTheme: null == darkTheme
//           ? _value.darkTheme
//           : darkTheme // ignore: cast_nullable_to_non_nullable
//               as ThemeData,
//     ));
//   }
// }

// /// @nodoc

// class _$ThemeStateImpl implements _ThemeState {
//   const _$ThemeStateImpl(
//       {this.isDarkMode = false,
//       required this.lightTheme,
//       required this.darkTheme});

//   @override
//   @JsonKey()
//   final bool isDarkMode;
//   @override
//   final ThemeData lightTheme;
//   @override
//   final ThemeData darkTheme;

//   @override
//   String toString() {
//     return 'ThemeState(isDarkMode: $isDarkMode, lightTheme: $lightTheme, darkTheme: $darkTheme)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$ThemeStateImpl &&
//             (identical(other.isDarkMode, isDarkMode) ||
//                 other.isDarkMode == isDarkMode) &&
//             (identical(other.lightTheme, lightTheme) ||
//                 other.lightTheme == lightTheme) &&
//             (identical(other.darkTheme, darkTheme) ||
//                 other.darkTheme == darkTheme));
//   }

//   @override
//   int get hashCode =>
//       Object.hash(runtimeType, isDarkMode, lightTheme, darkTheme);

//   /// Create a copy of ThemeState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
//       __$$ThemeStateImplCopyWithImpl<_$ThemeStateImpl>(this, _$identity);
// }

// abstract class _ThemeState implements ThemeState {
//   const factory _ThemeState(
//       {final bool isDarkMode,
//       required final ThemeData lightTheme,
//       required final ThemeData darkTheme}) = _$ThemeStateImpl;

//   @override
//   bool get isDarkMode;
//   @override
//   ThemeData get lightTheme;
//   @override
//   ThemeData get darkTheme;

//   /// Create a copy of ThemeState
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
