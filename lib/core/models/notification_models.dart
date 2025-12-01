import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

part 'notification_models.freezed.dart';
part 'notification_models.g.dart';

/// Enum for different notification types to handle navigation appropriately
enum NotificationType {
  @JsonValue('reservation')
  reservation,
  @JsonValue('promotion')
  promotion,
  @JsonValue('reminder')
  reminder,
  @JsonValue('hotel')
  hotel,
  @JsonValue('restaurant')
  restaurant,
  @JsonValue('general')
  general,
  @JsonValue('review')
  review,
  @JsonValue('booking_update')
  bookingUpdate,
}

/// Enum for notification priority levels
enum NotificationPriority {
  @JsonValue('low')
  low,
  @JsonValue('normal')
  normal,
  @JsonValue('high')
  high,
  @JsonValue('urgent')
  urgent,
}

/// Custom notification data model for structured notification handling
@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String id,
    required String title,
    required String body,
    @Default(NotificationType.general) NotificationType type,
    @Default(NotificationPriority.normal) NotificationPriority priority,
    @Default({}) Map<String, dynamic> data,
    String? imageUrl,
    String? actionUrl,
    String? entityId, // For navigation to specific items (hotel ID, reservation ID, etc.)
    @Default(false) bool isRead,
    DateTime? createdAt,
    DateTime? scheduledAt,
    @Default(false) bool requiresAction,
    String? actionButtonText,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);

  /// Create AppNotification from Firebase RemoteMessage
  factory AppNotification.fromRemoteMessage(RemoteMessage message) {
    final data = message.data;
    final notification = message.notification;
    
    return AppNotification(
      id: message.messageId ?? DateTime.now().millisecondsSinceEpoch.toString(),
      title: notification?.title ?? data['title'] ?? 'Notification',
      body: notification?.body ?? data['body'] ?? '',
      type: _parseNotificationType(data['type']),
      priority: _parseNotificationPriority(data['priority']),
      data: data,
      imageUrl: notification?.android?.imageUrl ?? 
                notification?.apple?.imageUrl ?? 
                data['imageUrl'],
      actionUrl: data['actionUrl'],
      entityId: data['entityId'],
      createdAt: DateTime.now(),
      requiresAction: data['requiresAction'] == 'true',
      actionButtonText: data['actionButtonText'],
    );
  }

  static NotificationType _parseNotificationType(String? type) {
    if (type == null) return NotificationType.general;
    
    switch (type.toLowerCase()) {
      case 'reservation':
        return NotificationType.reservation;
      case 'promotion':
        return NotificationType.promotion;
      case 'reminder':
        return NotificationType.reminder;
      case 'hotel':
        return NotificationType.hotel;
      case 'restaurant':
        return NotificationType.restaurant;
      case 'review':
        return NotificationType.review;
      case 'booking_update':
        return NotificationType.bookingUpdate;
      default:
        return NotificationType.general;
    }
  }

  static NotificationPriority _parseNotificationPriority(String? priority) {
    if (priority == null) return NotificationPriority.normal;
    
    switch (priority.toLowerCase()) {
      case 'low':
        return NotificationPriority.low;
      case 'high':
        return NotificationPriority.high;
      case 'urgent':
        return NotificationPriority.urgent;
      default:
        return NotificationPriority.normal;
    }
  }
}

/// Model for notification settings and preferences
@freezed
class NotificationSettings with _$NotificationSettings {
  const factory NotificationSettings({
    @Default(true) bool isEnabled,
    @Default(true) bool allowPromotions,
    @Default(true) bool allowReservationUpdates,
    @Default(true) bool allowReminders,
    @Default(true) bool allowReviews,
    @Default(true) bool allowSound,
    @Default(true) bool allowVibration,
    @Default(true) bool allowBadge,
    @Default([]) List<String> subscribedTopics,
    @Default('normal') String defaultPriority,
    @Default(true) bool showInForeground,
  }) = _NotificationSettings;

  factory NotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsFromJson(json);
}

/// Model for notification subscription topics
@freezed
class NotificationTopic with _$NotificationTopic {
  const factory NotificationTopic({
    required String id,
    required String name,
    required String description,
    @Default(false) bool isSubscribed,
    @Default(NotificationPriority.normal) NotificationPriority priority,
    String? icon,
    @Default(true) bool isOptional,
  }) = _NotificationTopic;

  factory NotificationTopic.fromJson(Map<String, dynamic> json) =>
      _$NotificationTopicFromJson(json);
}

/// Available notification topics for the app
class NotificationTopics {
  static const List<NotificationTopic> defaultTopics = [
    NotificationTopic(
      id: 'promotions',
      name: 'Promotions & Offers',
      description: 'Get notified about special deals and discounts',
      icon: '🎉',
    ),
    NotificationTopic(
      id: 'reservations',
      name: 'Reservation Updates',
      description: 'Updates about your bookings and reservations',
      icon: '📅',
      isOptional: false,
    ),
    NotificationTopic(
      id: 'new_hotels',
      name: 'New Hotels',
      description: 'Discover newly added hotels and accommodations',
      icon: '🏨',
    ),
    NotificationTopic(
      id: 'new_restaurants',
      name: 'New Restaurants',
      description: 'Discover newly added restaurants and dining options',
      icon: '🍽️',
    ),
    NotificationTopic(
      id: 'reviews',
      name: 'Review Requests',
      description: 'Reminders to review your visited places',
      icon: '⭐',
    ),
    NotificationTopic(
      id: 'recommendations',
      name: 'Personalized Recommendations',
      description: 'Get recommendations based on your preferences',
      icon: '💡',
    ),
  ];
}

/// Navigation action for notifications
@freezed
class NotificationAction with _$NotificationAction {
  const factory NotificationAction({
    required String route,
    Map<String, dynamic>? parameters,
    Map<String, String>? queryParameters,
    bool? clearStack,
  }) = _NotificationAction;

  factory NotificationAction.fromJson(Map<String, dynamic> json) =>
      _$NotificationActionFromJson(json);
}

/// Token management model
@freezed
class FCMToken with _$FCMToken {
  const factory FCMToken({
    required String token,
    required DateTime createdAt,
    DateTime? lastUpdated,
    @Default(true) bool isActive,
    String? userId,
    String? deviceId,
    String? platform,
  }) = _FCMToken;

  factory FCMToken.fromJson(Map<String, dynamic> json) =>
      _$FCMTokenFromJson(json);
}