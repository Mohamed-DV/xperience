// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileStateImpl _$$ProfileStateImplFromJson(Map<String, dynamic> json) =>
    _$ProfileStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      isLoadingDetails: json['isLoadingDetails'] as bool? ?? false,
      isLoadingReview: json['isLoadingReview'] as bool? ?? false,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      countReservations: (json['countReservations'] as num?)?.toInt() ?? 0,
      countReviews: (json['countReviews'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProfileStateImplToJson(_$ProfileStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'isLoadingDetails': instance.isLoadingDetails,
      'isLoadingReview': instance.isLoadingReview,
      'user': instance.user,
      'countReservations': instance.countReservations,
      'countReviews': instance.countReviews,
    };
