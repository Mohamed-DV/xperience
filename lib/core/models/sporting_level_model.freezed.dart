// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sporting_level_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SportingLevelModel _$SportingLevelModelFromJson(Map<String, dynamic> json) {
  return _SportingLevelModel.fromJson(json);
}

/// @nodoc
mixin _$SportingLevelModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this SportingLevelModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SportingLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SportingLevelModelCopyWith<SportingLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportingLevelModelCopyWith<$Res> {
  factory $SportingLevelModelCopyWith(
          SportingLevelModel value, $Res Function(SportingLevelModel) then) =
      _$SportingLevelModelCopyWithImpl<$Res, SportingLevelModel>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$SportingLevelModelCopyWithImpl<$Res, $Val extends SportingLevelModel>
    implements $SportingLevelModelCopyWith<$Res> {
  _$SportingLevelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SportingLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SportingLevelModelImplCopyWith<$Res>
    implements $SportingLevelModelCopyWith<$Res> {
  factory _$$SportingLevelModelImplCopyWith(_$SportingLevelModelImpl value,
          $Res Function(_$SportingLevelModelImpl) then) =
      __$$SportingLevelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$SportingLevelModelImplCopyWithImpl<$Res>
    extends _$SportingLevelModelCopyWithImpl<$Res, _$SportingLevelModelImpl>
    implements _$$SportingLevelModelImplCopyWith<$Res> {
  __$$SportingLevelModelImplCopyWithImpl(_$SportingLevelModelImpl _value,
      $Res Function(_$SportingLevelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SportingLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$SportingLevelModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SportingLevelModelImpl implements _SportingLevelModel {
  const _$SportingLevelModelImpl({required this.id, required this.title});

  factory _$SportingLevelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SportingLevelModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'SportingLevelModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportingLevelModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of SportingLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SportingLevelModelImplCopyWith<_$SportingLevelModelImpl> get copyWith =>
      __$$SportingLevelModelImplCopyWithImpl<_$SportingLevelModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SportingLevelModelImplToJson(
      this,
    );
  }
}

abstract class _SportingLevelModel implements SportingLevelModel {
  const factory _SportingLevelModel(
      {required final int id,
      required final String title}) = _$SportingLevelModelImpl;

  factory _SportingLevelModel.fromJson(Map<String, dynamic> json) =
      _$SportingLevelModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of SportingLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SportingLevelModelImplCopyWith<_$SportingLevelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
