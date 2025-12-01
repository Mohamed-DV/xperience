// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserTokens {
  UserModel get user => throw _privateConstructorUsedError;
  Tokens get tokens => throw _privateConstructorUsedError;

  /// Create a copy of UserTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserTokensCopyWith<UserTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTokensCopyWith<$Res> {
  factory $UserTokensCopyWith(
          UserTokens value, $Res Function(UserTokens) then) =
      _$UserTokensCopyWithImpl<$Res, UserTokens>;
  @useResult
  $Res call({UserModel user, Tokens tokens});

  $UserModelCopyWith<$Res> get user;
  $TokensCopyWith<$Res> get tokens;
}

/// @nodoc
class _$UserTokensCopyWithImpl<$Res, $Val extends UserTokens>
    implements $UserTokensCopyWith<$Res> {
  _$UserTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? tokens = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens,
    ) as $Val);
  }

  /// Create a copy of UserTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of UserTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokensCopyWith<$Res> get tokens {
    return $TokensCopyWith<$Res>(_value.tokens, (value) {
      return _then(_value.copyWith(tokens: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserTokensImplCopyWith<$Res>
    implements $UserTokensCopyWith<$Res> {
  factory _$$UserTokensImplCopyWith(
          _$UserTokensImpl value, $Res Function(_$UserTokensImpl) then) =
      __$$UserTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel user, Tokens tokens});

  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $TokensCopyWith<$Res> get tokens;
}

/// @nodoc
class __$$UserTokensImplCopyWithImpl<$Res>
    extends _$UserTokensCopyWithImpl<$Res, _$UserTokensImpl>
    implements _$$UserTokensImplCopyWith<$Res> {
  __$$UserTokensImplCopyWithImpl(
      _$UserTokensImpl _value, $Res Function(_$UserTokensImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? tokens = null,
  }) {
    return _then(_$UserTokensImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens,
    ));
  }
}

/// @nodoc

class _$UserTokensImpl extends _UserTokens {
  const _$UserTokensImpl({required this.user, required this.tokens})
      : super._();

  @override
  final UserModel user;
  @override
  final Tokens tokens;

  @override
  String toString() {
    return 'UserTokens(user: $user, tokens: $tokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTokensImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tokens, tokens) || other.tokens == tokens));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, tokens);

  /// Create a copy of UserTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTokensImplCopyWith<_$UserTokensImpl> get copyWith =>
      __$$UserTokensImplCopyWithImpl<_$UserTokensImpl>(this, _$identity);
}

abstract class _UserTokens extends UserTokens {
  const factory _UserTokens(
      {required final UserModel user,
      required final Tokens tokens}) = _$UserTokensImpl;
  const _UserTokens._() : super._();

  @override
  UserModel get user;
  @override
  Tokens get tokens;

  /// Create a copy of UserTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserTokensImplCopyWith<_$UserTokensImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
