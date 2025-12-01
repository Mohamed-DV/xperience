// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activites_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivitesModel _$ActivitesModelFromJson(Map<String, dynamic> json) {
  return _ActivitesModel.fromJson(json);
}

/// @nodoc
mixin _$ActivitesModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get specificTitle => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  List<SubActiviteModel> get subCategories =>
      throw _privateConstructorUsedError;

  /// Serializes this ActivitesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivitesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivitesModelCopyWith<ActivitesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitesModelCopyWith<$Res> {
  factory $ActivitesModelCopyWith(
          ActivitesModel value, $Res Function(ActivitesModel) then) =
      _$ActivitesModelCopyWithImpl<$Res, ActivitesModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String specificTitle,
      String? tag,
      String icon,
      List<SubActiviteModel> subCategories});
}

/// @nodoc
class _$ActivitesModelCopyWithImpl<$Res, $Val extends ActivitesModel>
    implements $ActivitesModelCopyWith<$Res> {
  _$ActivitesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivitesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? specificTitle = null,
    Object? tag = freezed,
    Object? icon = null,
    Object? subCategories = null,
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
      specificTitle: null == specificTitle
          ? _value.specificTitle
          : specificTitle // ignore: cast_nullable_to_non_nullable
              as String,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      subCategories: null == subCategories
          ? _value.subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<SubActiviteModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivitesModelImplCopyWith<$Res>
    implements $ActivitesModelCopyWith<$Res> {
  factory _$$ActivitesModelImplCopyWith(_$ActivitesModelImpl value,
          $Res Function(_$ActivitesModelImpl) then) =
      __$$ActivitesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String specificTitle,
      String? tag,
      String icon,
      List<SubActiviteModel> subCategories});
}

/// @nodoc
class __$$ActivitesModelImplCopyWithImpl<$Res>
    extends _$ActivitesModelCopyWithImpl<$Res, _$ActivitesModelImpl>
    implements _$$ActivitesModelImplCopyWith<$Res> {
  __$$ActivitesModelImplCopyWithImpl(
      _$ActivitesModelImpl _value, $Res Function(_$ActivitesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivitesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? specificTitle = null,
    Object? tag = freezed,
    Object? icon = null,
    Object? subCategories = null,
  }) {
    return _then(_$ActivitesModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      specificTitle: null == specificTitle
          ? _value.specificTitle
          : specificTitle // ignore: cast_nullable_to_non_nullable
              as String,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      subCategories: null == subCategories
          ? _value._subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<SubActiviteModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivitesModelImpl implements _ActivitesModel {
  const _$ActivitesModelImpl(
      {required this.id,
      required this.title,
      required this.specificTitle,
      this.tag,
      required this.icon,
      required final List<SubActiviteModel> subCategories})
      : _subCategories = subCategories;

  factory _$ActivitesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivitesModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String specificTitle;
  @override
  final String? tag;
  @override
  final String icon;
  final List<SubActiviteModel> _subCategories;
  @override
  List<SubActiviteModel> get subCategories {
    if (_subCategories is EqualUnmodifiableListView) return _subCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategories);
  }

  @override
  String toString() {
    return 'ActivitesModel(id: $id, title: $title, specificTitle: $specificTitle, tag: $tag, icon: $icon, subCategories: $subCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivitesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.specificTitle, specificTitle) ||
                other.specificTitle == specificTitle) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality()
                .equals(other._subCategories, _subCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, specificTitle, tag,
      icon, const DeepCollectionEquality().hash(_subCategories));

  /// Create a copy of ActivitesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivitesModelImplCopyWith<_$ActivitesModelImpl> get copyWith =>
      __$$ActivitesModelImplCopyWithImpl<_$ActivitesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivitesModelImplToJson(
      this,
    );
  }
}

abstract class _ActivitesModel implements ActivitesModel {
  const factory _ActivitesModel(
          {required final int id,
          required final String title,
          required final String specificTitle,
          final String? tag,
          required final String icon,
          required final List<SubActiviteModel> subCategories}) =
      _$ActivitesModelImpl;

  factory _ActivitesModel.fromJson(Map<String, dynamic> json) =
      _$ActivitesModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get specificTitle;
  @override
  String? get tag;
  @override
  String get icon;
  @override
  List<SubActiviteModel> get subCategories;

  /// Create a copy of ActivitesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivitesModelImplCopyWith<_$ActivitesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
