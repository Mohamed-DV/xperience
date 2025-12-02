// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Wishlist _$WishlistFromJson(Map<String, dynamic> json) {
  return _Wishlist.fromJson(json);
}

/// @nodoc
mixin _$Wishlist {
  String get id => throw _privateConstructorUsedError; // unique id
  String get name => throw _privateConstructorUsedError; // list name
  String get image =>
      throw _privateConstructorUsedError; // preview image (asset or network)
  List<EventModel> get events => throw _privateConstructorUsedError;

  /// Serializes this Wishlist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Wishlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistCopyWith<Wishlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistCopyWith<$Res> {
  factory $WishlistCopyWith(Wishlist value, $Res Function(Wishlist) then) =
      _$WishlistCopyWithImpl<$Res, Wishlist>;
  @useResult
  $Res call({String id, String name, String image, List<EventModel> events});
}

/// @nodoc
class _$WishlistCopyWithImpl<$Res, $Val extends Wishlist>
    implements $WishlistCopyWith<$Res> {
  _$WishlistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Wishlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistImplCopyWith<$Res>
    implements $WishlistCopyWith<$Res> {
  factory _$$WishlistImplCopyWith(
          _$WishlistImpl value, $Res Function(_$WishlistImpl) then) =
      __$$WishlistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String image, List<EventModel> events});
}

/// @nodoc
class __$$WishlistImplCopyWithImpl<$Res>
    extends _$WishlistCopyWithImpl<$Res, _$WishlistImpl>
    implements _$$WishlistImplCopyWith<$Res> {
  __$$WishlistImplCopyWithImpl(
      _$WishlistImpl _value, $Res Function(_$WishlistImpl) _then)
      : super(_value, _then);

  /// Create a copy of Wishlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? events = null,
  }) {
    return _then(_$WishlistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistImpl implements _Wishlist {
  const _$WishlistImpl(
      {required this.id,
      required this.name,
      required this.image,
      final List<EventModel> events = const []})
      : _events = events;

  factory _$WishlistImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistImplFromJson(json);

  @override
  final String id;
// unique id
  @override
  final String name;
// list name
  @override
  final String image;
// preview image (asset or network)
  final List<EventModel> _events;
// preview image (asset or network)
  @override
  @JsonKey()
  List<EventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'Wishlist(id: $id, name: $name, image: $image, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image,
      const DeepCollectionEquality().hash(_events));

  /// Create a copy of Wishlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistImplCopyWith<_$WishlistImpl> get copyWith =>
      __$$WishlistImplCopyWithImpl<_$WishlistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistImplToJson(
      this,
    );
  }
}

abstract class _Wishlist implements Wishlist {
  const factory _Wishlist(
      {required final String id,
      required final String name,
      required final String image,
      final List<EventModel> events}) = _$WishlistImpl;

  factory _Wishlist.fromJson(Map<String, dynamic> json) =
      _$WishlistImpl.fromJson;

  @override
  String get id; // unique id
  @override
  String get name; // list name
  @override
  String get image; // preview image (asset or network)
  @override
  List<EventModel> get events;

  /// Create a copy of Wishlist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistImplCopyWith<_$WishlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
