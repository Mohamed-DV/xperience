import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spots_xplorer_app/core/models/notification_models.dart';
import 'package:spots_xplorer_app/core/services/firebase_services.dart';
import 'package:spots_xplorer_app/core/shared/providers.dart';
import 'package:logging/logging.dart';

part 'notification_service_provider.g.dart';

@riverpod
class NotificationService extends _$NotificationService {
  static final _logger = Logger('NotificationService');
  late PushNotificationService _pushService;

  @override
  Future<void> build() async {
    _pushService = ref.read(pushNotificationServiceProvider);
    await _initializeNotificationService();
  }

  Future<void> _initializeNotificationService() async {
    try {
      await _pushService.init(
        onNotificationReceived: _handleNotificationReceived,
        onNotificationTapped: _handleNotificationTapped,
        onTokenRefresh: _handleTokenRefresh,
      );
      
      // Subscribe to default topics for new users
      await _subscribeToDefaultTopics();
      
      _logger.info('Notification service initialized successfully');
    } catch (e) {
      _logger.severe('Failed to initialize notification service: $e');
    }
  }

  void _handleNotificationReceived(AppNotification notification) {
    _logger.info('Notification received: ${notification.title}');
    
    // Update notification state to trigger UI updates
    ref.invalidateSelf();
    
    // You can add custom logic here, such as:
    // - Updating badge count
    // - Storing notification for in-app display
    // - Triggering analytics events
  }

  void _handleNotificationTapped(AppNotification notification) {
    _logger.info('Notification tapped: ${notification.title}');
    
    // Mark notification as read
    markNotificationAsRead(notification.id);
    
    // You can add custom logic here for tracking user interactions
  }

  void _handleTokenRefresh(String token) {
    _logger.info('FCM Token refreshed');
    
    // You can add custom logic here, such as:
    // - Updating user profile with new token
    // - Sending token to your backend
    // - Re-subscribing to topics if needed
  }

  Future<void> _subscribeToDefaultTopics() async {
    try {
      // Subscribe to essential topics
      final defaultTopics = ['general', 'app_updates'];
      for (final topic in defaultTopics) {
        await _pushService.subscribeToTopic(topic);
      }
    } catch (e) {
      _logger.warning('Failed to subscribe to default topics: $e');
    }
  }

  // Token Management
  Future<String?> getToken() async {
    try {
      return await _pushService.getToken();
    } catch (e) {
      _logger.severe('Error getting FCM token: $e');
      return null;
    }
  }

  String? get currentToken => _pushService.currentToken;

  // Topic Management
  Future<void> subscribeToTopic(String topic) async {
    try {
      await _pushService.subscribeToTopic(topic);
      ref.invalidateSelf();
    } catch (e) {
      _logger.severe('Error subscribing to topic $topic: $e');
      rethrow;
    }
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    try {
      await _pushService.unsubscribeFromTopic(topic);
      ref.invalidateSelf();
    } catch (e) {
      _logger.severe('Error unsubscribing from topic $topic: $e');
      rethrow;
    }
  }

  Future<void> updateTopicSubscriptions(List<NotificationTopic> topics) async {
    try {
      for (final topic in topics) {
        if (topic.isSubscribed) {
          await _pushService.subscribeToTopic(topic.id);
        } else {
          await _pushService.unsubscribeFromTopic(topic.id);
        }
      }
      ref.invalidateSelf();
    } catch (e) {
      _logger.severe('Error updating topic subscriptions: $e');
      rethrow;
    }
  }

  // Notification Settings
  Future<void> updateNotificationSettings(NotificationSettings settings) async {
    try {
      await _pushService.updateNotificationSettings(settings);
      ref.invalidateSelf();
    } catch (e) {
      _logger.severe('Error updating notification settings: $e');
      rethrow;
    }
  }

  NotificationSettings get currentSettings => _pushService.currentSettings;

  // Notification Management
  Future<void> sendLocalNotification({
    required String title,
    required String body,
    NotificationType type = NotificationType.general,
    NotificationPriority priority = NotificationPriority.normal,
    Map<String, dynamic>? data,
    String? imageUrl,
    String? actionUrl,
    String? entityId,
  }) async {
    try {
      await _pushService.sendLocalNotification(
        title: title,
        body: body,
        type: type,
        priority: priority,
        data: data,
        imageUrl: imageUrl,
        actionUrl: actionUrl,
        entityId: entityId,
      );
    } catch (e) {
      _logger.severe('Error sending local notification: $e');
      rethrow;
    }
  }

  Future<List<AppNotification>> getNotificationHistory({int limit = 50}) async {
    try {
      return await _pushService.getNotificationHistory(limit: limit);
    } catch (e) {
      _logger.severe('Error getting notification history: $e');
      return [];
    }
  }

  Future<void> markNotificationAsRead(String notificationId) async {
    try {
      await _pushService.markNotificationAsRead(notificationId);
    } catch (e) {
      _logger.severe('Error marking notification as read: $e');
    }
  }

  Future<void> clearAllNotifications() async {
    try {
      await _pushService.clearAllNotifications();
    } catch (e) {
      _logger.severe('Error clearing notifications: $e');
    }
  }

  // Permission Management
  Future<bool> areNotificationsEnabled() async {
    try {
      return await _pushService.areNotificationsEnabled();
    } catch (e) {
      _logger.severe('Error checking notification permissions: $e');
      return false;
    }
  }

  // Test notification for debugging
  Future<void> sendTestNotification() async {
    await sendLocalNotification(
      title: 'Test Notification',
      body: 'This is a test notification from Spots Xplorer',
      type: NotificationType.general,
      priority: NotificationPriority.normal,
    );
  }
}

// Provider for notification topics with their subscription status
@riverpod
Future<List<NotificationTopic>> notificationTopics(NotificationTopicsRef ref) async {
  try {
    final notificationService = ref.watch(notificationServiceProvider.notifier);
    final settings = notificationService.currentSettings;
    
    // Return default topics with current subscription status
    return NotificationTopics.defaultTopics.map((topic) {
      return topic.copyWith(
        isSubscribed: settings.subscribedTopics.contains(topic.id),
      );
    }).toList();
  } catch (e) {
    Logger('NotificationTopics').severe('Error loading notification topics: $e');
    return NotificationTopics.defaultTopics;
  }
}

// Provider for unread notification count
@riverpod
Future<int> unreadNotificationCount(UnreadNotificationCountRef ref) async {
  try {
    final notificationService = ref.watch(notificationServiceProvider.notifier);
    final history = await notificationService.getNotificationHistory(limit: 100);
    return history.where((notification) => !notification.isRead).length;
  } catch (e) {
    Logger('UnreadNotificationCount').severe('Error getting unread count: $e');
    return 0;
  }
}

// Provider for recent notifications
@riverpod
Future<List<AppNotification>> recentNotifications(RecentNotificationsRef ref) async {
  try {
    final notificationService = ref.watch(notificationServiceProvider.notifier);
    return await notificationService.getNotificationHistory(limit: 20);
  } catch (e) {
    Logger('RecentNotifications').severe('Error getting recent notifications: $e');
    return [];
  }
}