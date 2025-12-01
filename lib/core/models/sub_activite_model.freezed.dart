// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_activite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubActiviteModel _$SubActiviteModelFromJson(Map<String, dynamic> json) {
  return _SubActiviteModel.fromJson(json);
}

/// @nodoc
mixin _$SubActiviteModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this SubActiviteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubActiviteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubActiviteModelCopyWith<SubActiviteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubActiviteModelCopyWith<$Res> {
  factory $SubActiviteModelCopyWith(
          SubActiviteModel value, $Res Function(SubActiviteModel) then) =
      _$SubActiviteModelCopyWithImpl<$Res, SubActiviteModel>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$SubActiviteModelCopyWithImpl<$Res, $Val extends SubActiviteModel>
    implements $SubActiviteModelCopyWith<$Res> {
  _$SubActiviteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubActiviteModel
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
abstract class _$$SubActiviteModelImplCopyWith<$Res>
    implements $SubActiviteModelCopyWith<$Res> {
  factory _$$SubActiviteModelImplCopyWith(_$SubActiviteModelImpl value,
          $Res Function(_$SubActiviteModelImpl) then) =
      __$$SubActiviteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$SubActiviteModelImplCopyWithImpl<$Res>
    extends _$SubActiviteModelCopyWithImpl<$Res, _$SubActiviteModelImpl>
    implements _$$SubActiviteModelImplCopyWith<$Res> {
  __$$SubActiviteModelImplCopyWithImpl(_$SubActiviteModelImpl _value,
      $Res Function(_$SubActiviteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubActiviteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$SubActiviteModelImpl(
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
class _$SubActiviteModelImpl implements _SubActiviteModel {
  const _$SubActiviteModelImpl({required this.id, required this.title});

  factory _$SubActiviteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubActiviteModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'SubActiviteModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubActiviteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of SubActiviteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubActiviteModelImplCopyWith<_$SubActiviteModelImpl> get copyWith =>
      __$$SubActiviteModelImplCopyWithImpl<_$SubActiviteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubActiviteModelImplToJson(
      this,
    );
  }
}

abstract class _SubActiviteModel implements SubActiviteModel {
  const factory _SubActiviteModel(
      {required final int id,
      required final String title}) = _$SubActiviteModelImpl;

  factory _SubActiviteModel.fromJson(Map<String, dynamic> json) =
      _$SubActiviteModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of SubActiviteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubActiviteModelImplCopyWith<_$SubActiviteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
