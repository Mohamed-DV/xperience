// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      picture: json['picture'] as String?,
      birthDate: json['birthDate'] as String?,
      email: json['email'] as String?,
      status: json['status'] as String?,
      subCategories: (json['subCategories'] as List<dynamic>?)
              ?.map((e) => SubActiviteModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sportingLevel: json['sportingLevel'] == null
          ? null
          : SportingLevelModel.fromJson(
              json['sportingLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'picture': instance.picture,
      'birthDate': instance.birthDate,
      'email': instance.email,
      'status': instance.status,
    };
