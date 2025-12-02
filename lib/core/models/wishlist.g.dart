// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistImpl _$$WishlistImplFromJson(Map<String, dynamic> json) =>
    _$WishlistImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WishlistImplToJson(_$WishlistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'events': instance.events,
    };
