// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileState _$ProfileStateFromJson(Map<String, dynamic> json) {
  return _ProfileState.fromJson(json);
}

/// @nodoc
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingDetails => throw _privateConstructorUsedError;
  bool get isLoadingReview => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  int? get countReservations => throw _privateConstructorUsedError;
  int? get countReviews => throw _privateConstructorUsedError;

  /// Serializes this ProfileState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingDetails,
      bool isLoadingReview,
      UserModel? user,
      int? countReservations,
      int? countReviews});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingDetails = null,
    Object? isLoadingReview = null,
    Object? user = freezed,
    Object? countReservations = freezed,
    Object? countReviews = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingDetails: null == isLoadingDetails
          ? _value.isLoadingDetails
          : isLoadingDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingReview: null == isLoadingReview
          ? _value.isLoadingReview
          : isLoadingReview // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      countReservations: freezed == countReservations
          ? _value.countReservations
          : countReservations // ignore: cast_nullable_to_non_nullable
              as int?,
      countReviews: freezed == countReviews
          ? _value.countReviews
          : countReviews // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingDetails,
      bool isLoadingReview,
      UserModel? user,
      int? countReservations,
      int? countReviews});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingDetails = null,
    Object? isLoadingReview = null,
    Object? user = freezed,
    Object? countReservations = freezed,
    Object? countReviews = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingDetails: null == isLoadingDetails
          ? _value.isLoadingDetails
          : isLoadingDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingReview: null == isLoadingReview
          ? _value.isLoadingReview
          : isLoadingReview // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      countReservations: freezed == countReservations
          ? _value.countReservations
          : countReservations // ignore: cast_nullable_to_non_nullable
              as int?,
      countReviews: freezed == countReviews
          ? _value.countReviews
          : countReviews // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.isLoading = false,
      this.isLoadingDetails = false,
      this.isLoadingReview = false,
      this.user = null,
      this.countReservations = 0,
      this.countReviews = 0});

  factory _$ProfileStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingDetails;
  @override
  @JsonKey()
  final bool isLoadingReview;
  @override
  @JsonKey()
  final UserModel? user;
  @override
  @JsonKey()
  final int? countReservations;
  @override
  @JsonKey()
  final int? countReviews;

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, isLoadingDetails: $isLoadingDetails, isLoadingReview: $isLoadingReview, user: $user, countReservations: $countReservations, countReviews: $countReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingDetails, isLoadingDetails) ||
                other.isLoadingDetails == isLoadingDetails) &&
            (identical(other.isLoadingReview, isLoadingReview) ||
                other.isLoadingReview == isLoadingReview) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.countReservations, countReservations) ||
                other.countReservations == countReservations) &&
            (identical(other.countReviews, countReviews) ||
                other.countReviews == countReviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isLoadingDetails,
      isLoadingReview, user, countReservations, countReviews);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileStateImplToJson(
      this,
    );
  }
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final bool isLoading,
      final bool isLoadingDetails,
      final bool isLoadingReview,
      final UserModel? user,
      final int? countReservations,
      final int? countReviews}) = _$ProfileStateImpl;

  factory _ProfileState.fromJson(Map<String, dynamic> json) =
      _$ProfileStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  bool get isLoadingDetails;
  @override
  bool get isLoadingReview;
  @override
  UserModel? get user;
  @override
  int? get countReservations;
  @override
  int? get countReviews;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
