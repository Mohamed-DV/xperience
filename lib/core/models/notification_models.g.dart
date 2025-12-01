// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppNotificationImpl _$$AppNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$AppNotificationImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      type: $enumDecodeNullable(_$NotificationTypeEnumMap, json['type']) ??
          NotificationType.general,
      priority: $enumDecodeNullable(
              _$NotificationPriorityEnumMap, json['priority']) ??
          NotificationPriority.normal,
      data: json['data'] as Map<String, dynamic>? ?? const {},
      imageUrl: json['imageUrl'] as String?,
      actionUrl: json['actionUrl'] as String?,
      entityId: json['entityId'] as String?,
      isRead: json['isRead'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      scheduledAt: json['scheduledAt'] == null
          ? null
          : DateTime.parse(json['scheduledAt'] as String),
      requiresAction: json['requiresAction'] as bool? ?? false,
      actionButtonText: json['actionButtonText'] as String?,
    );

Map<String, dynamic> _$$AppNotificationImplToJson(
        _$AppNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'priority': _$NotificationPriorityEnumMap[instance.priority]!,
      'data': instance.data,
      'imageUrl': instance.imageUrl,
      'actionUrl': instance.actionUrl,
      'entityId': instance.entityId,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt?.toIso8601String(),
      'scheduledAt': instance.scheduledAt?.toIso8601String(),
      'requiresAction': instance.requiresAction,
      'actionButtonText': instance.actionButtonText,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.reservation: 'reservation',
  NotificationType.promotion: 'promotion',
  NotificationType.reminder: 'reminder',
  NotificationType.hotel: 'hotel',
  NotificationType.restaurant: 'restaurant',
  NotificationType.general: 'general',
  NotificationType.review: 'review',
  NotificationType.bookingUpdate: 'booking_update',
};

const _$NotificationPriorityEnumMap = {
  NotificationPriority.low: 'low',
  NotificationPriority.normal: 'normal',
  NotificationPriority.high: 'high',
  NotificationPriority.urgent: 'urgent',
};

_$NotificationSettingsImpl _$$NotificationSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSettingsImpl(
      isEnabled: json['isEnabled'] as bool? ?? true,
      allowPromotions: json['allowPromotions'] as bool? ?? true,
      allowReservationUpdates: json['allowReservationUpdates'] as bool? ?? true,
      allowReminders: json['allowReminders'] as bool? ?? true,
      allowReviews: json['allowReviews'] as bool? ?? true,
      allowSound: json['allowSound'] as bool? ?? true,
      allowVibration: json['allowVibration'] as bool? ?? true,
      allowBadge: json['allowBadge'] as bool? ?? true,
      subscribedTopics: (json['subscribedTopics'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      defaultPriority: json['defaultPriority'] as String? ?? 'normal',
      showInForeground: json['showInForeground'] as bool? ?? true,
    );

Map<String, dynamic> _$$NotificationSettingsImplToJson(
        _$NotificationSettingsImpl instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'allowPromotions': instance.allowPromotions,
      'allowReservationUpdates': instance.allowReservationUpdates,
      'allowReminders': instance.allowReminders,
      'allowReviews': instance.allowReviews,
      'allowSound': instance.allowSound,
      'allowVibration': instance.allowVibration,
      'allowBadge': instance.allowBadge,
      'subscribedTopics': instance.subscribedTopics,
      'defaultPriority': instance.defaultPriority,
      'showInForeground': instance.showInForeground,
    };

_$NotificationTopicImpl _$$NotificationTopicImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationTopicImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      isSubscribed: json['isSubscribed'] as bool? ?? false,
      priority: $enumDecodeNullable(
              _$NotificationPriorityEnumMap, json['priority']) ??
          NotificationPriority.normal,
      icon: json['icon'] as String?,
      isOptional: json['isOptional'] as bool? ?? true,
    );

Map<String, dynamic> _$$NotificationTopicImplToJson(
        _$NotificationTopicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isSubscribed': instance.isSubscribed,
      'priority': _$NotificationPriorityEnumMap[instance.priority]!,
      'icon': instance.icon,
      'isOptional': instance.isOptional,
    };

_$NotificationActionImpl _$$NotificationActionImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationActionImpl(
      route: json['route'] as String,
      parameters: json['parameters'] as Map<String, dynamic>?,
      queryParameters: (json['queryParameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      clearStack: json['clearStack'] as bool?,
    );

Map<String, dynamic> _$$NotificationActionImplToJson(
        _$NotificationActionImpl instance) =>
    <String, dynamic>{
      'route': instance.route,
      'parameters': instance.parameters,
      'queryParameters': instance.queryParameters,
      'clearStack': instance.clearStack,
    };

_$FCMTokenImpl _$$FCMTokenImplFromJson(Map<String, dynamic> json) =>
    _$FCMTokenImpl(
      token: json['token'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      isActive: json['isActive'] as bool? ?? true,
      userId: json['userId'] as String?,
      deviceId: json['deviceId'] as String?,
      platform: json['platform'] as String?,
    );

Map<String, dynamic> _$$FCMTokenImplToJson(_$FCMTokenImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'isActive': instance.isActive,
      'userId': instance.userId,
      'deviceId': instance.deviceId,
      'platform': instance.platform,
    };
