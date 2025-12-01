// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activites_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivitesModelImpl _$$ActivitesModelImplFromJson(Map<String, dynamic> json) =>
    _$ActivitesModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      specificTitle: json['specificTitle'] as String,
      tag: json['tag'] as String?,
      icon: json['icon'] as String,
      subCategories: (json['subCategories'] as List<dynamic>)
          .map((e) => SubActiviteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ActivitesModelImplToJson(
        _$ActivitesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'specificTitle': instance.specificTitle,
      'tag': instance.tag,
      'icon': instance.icon,
      'subCategories': instance.subCategories,
    };
