import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/core/models/notification_models.dart';
import 'package:spots_xplorer_app/core/services/notification_service_provider.dart';
import 'package:logging/logging.dart';

/// Utility class for testing Firebase notifications in development
class NotificationTester {
  static final _logger = Logger('NotificationTester');

  /// Test all notification types
  static Future<void> testAllNotificationTypes(WidgetRef ref) async {
    final notificationService = ref.read(notificationServiceProvider.notifier);

    final testNotifications = [
      _createTestNotification(
        type: NotificationType.hotel,
        title: 'New Hotel Available!',
        body: 'Check out Hotel Paradise with amazing amenities',
        entityId: 'hotel_123',
        imageUrl: 'https://example.com/hotel.jpg',
      ),
      _createTestNotification(
        type: NotificationType.restaurant,
        title: 'Restaurant Recommendation',
        body: 'Discover La Belle Cuisine - highly rated by our users',
        entityId: 'restaurant_456',
      ),
      _createTestNotification(
        type: NotificationType.reservation,
        title: 'Booking Confirmed',
        body: 'Your reservation at Hotel Paradise is confirmed for Dec 25',
        entityId: 'reservation_789',
        priority: NotificationPriority.high,
      ),
      _createTestNotification(
        type: NotificationType.promotion,
        title: '🎉 Special Offer!',
        body: 'Get 20% off on all hotel bookings this weekend',
        actionUrl: '/promotions',
        priority: NotificationPriority.normal,
      ),
      _createTestNotification(
        type: NotificationType.review,
        title: 'Please Review Your Stay',
        body: 'How was your experience at Hotel Paradise?',
        entityId: 'stay_101',
        actionButtonText: 'Write Review',
        requiresAction: true,
      ),
      _createTestNotification(
        type: NotificationType.reminder,
        title: 'Check-in Reminder',
        body: 'Don\'t forget to check-in tomorrow at 3:00 PM',
        entityId: 'reservation_789',
        priority: NotificationPriority.high,
      ),
      _createTestNotification(
        type: NotificationType.bookingUpdate,
        title: 'Booking Update',
        body: 'Your check-in time has been updated to 4:00 PM',
        entityId: 'reservation_789',
        priority: NotificationPriority.urgent,
      ),
    ];

    for (int i = 0; i < testNotifications.length; i++) {
      final notification = testNotifications[i];
      
      try {
        await notificationService.sendLocalNotification(
          title: notification.title,
          body: notification.body,
          type: notification.type,
          priority: notification.priority,
          data: notification.data,
          imageUrl: notification.imageUrl,
          actionUrl: notification.actionUrl,
          entityId: notification.entityId,
        );

        _logger.info('Test notification ${i + 1} sent: ${notification.title}');
        
        // Delay between notifications for better testing
        await Future.delayed(const Duration(seconds: 2));
      } catch (e) {
        _logger.severe('Failed to send test notification ${i + 1}: $e');
      }
    }
  }

  /// Test specific notification scenarios
  static Future<void> testScenario(
    WidgetRef ref,
    NotificationScenario scenario,
  ) async {
    final notificationService = ref.read(notificationServiceProvider.notifier);

    switch (scenario) {
      case NotificationScenario.hotelBooking:
        await _testHotelBookingFlow(notificationService);
        break;
      case NotificationScenario.restaurantDiscovery:
        await _testRestaurantDiscoveryFlow(notificationService);
        break;
      case NotificationScenario.promotionalCampaign:
        await _testPromotionalCampaignFlow(notificationService);
        break;
      case NotificationScenario.reviewRequest:
        await _testReviewRequestFlow(notificationService);
        break;
    }
  }

  static Future<void> _testHotelBookingFlow(dynamic notificationService) async {
    // Booking confirmation
    await notificationService.sendLocalNotification(
      title: 'Booking Confirmed ✅',
      body: 'Your reservation at Grand Hotel is confirmed for Dec 25-27',
      type: NotificationType.reservation,
      priority: NotificationPriority.high,
      entityId: 'booking_001',
      data: {
        'booking_id': 'booking_001',
        'hotel_name': 'Grand Hotel',
        'check_in': '2024-12-25',
        'check_out': '2024-12-27',
      },
    );

    await Future.delayed(const Duration(seconds: 3));

    // Check-in reminder
    await notificationService.sendLocalNotification(
      title: 'Check-in Reminder 🏨',
      body: 'Your check-in is tomorrow at 3:00 PM. Don\'t forget!',
      type: NotificationType.reminder,
      priority: NotificationPriority.normal,
      entityId: 'booking_001',
    );

    await Future.delayed(const Duration(seconds: 3));

    // Post-stay review request
    await notificationService.sendLocalNotification(
      title: 'How was your stay? ⭐',
      body: 'Share your experience at Grand Hotel to help other travelers',
      type: NotificationType.review,
      priority: NotificationPriority.normal,
      entityId: 'booking_001',
      requiresAction: true,
      actionButtonText: 'Write Review',
    );
  }

  static Future<void> _testRestaurantDiscoveryFlow(dynamic notificationService) async {
    await notificationService.sendLocalNotification(
      title: 'New Restaurant Alert! 🍽️',
      body: 'Le Petit Bistro just opened nearby with authentic French cuisine',
      type: NotificationType.restaurant,
      priority: NotificationPriority.normal,
      entityId: 'restaurant_001',
      imageUrl: 'https://example.com/restaurant.jpg',
    );

    await Future.delayed(const Duration(seconds: 3));

    await notificationService.sendLocalNotification(
      title: 'Special Opening Offer 🎉',
      body: '20% off your first meal at Le Petit Bistro this week',
      type: NotificationType.promotion,
      priority: NotificationPriority.normal,
      entityId: 'restaurant_001',
    );
  }

  static Future<void> _testPromotionalCampaignFlow(dynamic notificationService) async {
    await notificationService.sendLocalNotification(
      title: 'Weekend Special! 🌟',
      body: 'Up to 30% off on weekend getaways. Book now!',
      type: NotificationType.promotion,
      priority: NotificationPriority.normal,
      actionUrl: '/promotions',
      imageUrl: 'https://example.com/weekend-offer.jpg',
    );

    await Future.delayed(const Duration(seconds: 4));

    await notificationService.sendLocalNotification(
      title: 'Last Chance! ⏰',
      body: 'Only 2 hours left for the weekend special offer',
      type: NotificationType.promotion,
      priority: NotificationPriority.high,
      actionUrl: '/promotions',
    );
  }

  static Future<void> _testReviewRequestFlow(dynamic notificationService) async {
    await notificationService.sendLocalNotification(
      title: 'Thank you for your visit! 🙏',
      body: 'We hope you enjoyed your experience. Please share your feedback',
      type: NotificationType.review,
      priority: NotificationPriority.normal,
      entityId: 'visit_001',
      requiresAction: true,
      actionButtonText: 'Rate & Review',
    );
  }

  /// Test token management
  static Future<void> testTokenManagement(WidgetRef ref) async {
    final notificationService = ref.read(notificationServiceProvider.notifier);

    try {
      // Get current token
      final token = await notificationService.getToken();
      _logger.info('Current FCM Token: ${token?.substring(0, 20)}...');

      // Test topic subscription
      await notificationService.subscribeToTopic('test_topic');
      _logger.info('Subscribed to test_topic');

      await Future.delayed(const Duration(seconds: 2));

      // Test topic unsubscription
      await notificationService.unsubscribeFromTopic('test_topic');
      _logger.info('Unsubscribed from test_topic');

      // Check notification permissions
      final hasPermission = await notificationService.areNotificationsEnabled();
      _logger.info('Notification permissions enabled: $hasPermission');

    } catch (e) {
      _logger.severe('Token management test failed: $e');
    }
  }

  /// Test notification settings
  static Future<void> testNotificationSettings(WidgetRef ref) async {
    final notificationService = ref.read(notificationServiceProvider.notifier);

    try {
      // Get current settings
      final currentSettings = notificationService.currentSettings;
      _logger.info('Current settings: ${currentSettings.toString()}');

      // Update settings
      final newSettings = currentSettings.copyWith(
        allowSound: !currentSettings.allowSound,
        allowVibration: !currentSettings.allowVibration,
      );

      await notificationService.updateNotificationSettings(newSettings);
      _logger.info('Settings updated successfully');

      // Send test notification with new settings
      await notificationService.sendTestNotification();
      _logger.info('Test notification sent with new settings');

    } catch (e) {
      _logger.severe('Settings test failed: $e');
    }
  }

  static AppNotification _createTestNotification({
    required NotificationType type,
    required String title,
    required String body,
    NotificationPriority priority = NotificationPriority.normal,
    String? entityId,
    String? actionUrl,
    String? imageUrl,
    String? actionButtonText,
    bool requiresAction = false,
    Map<String, dynamic>? data,
  }) {
    return AppNotification(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title,
      body: body,
      type: type,
      priority: priority,
      entityId: entityId,
      actionUrl: actionUrl,
      imageUrl: imageUrl,
      actionButtonText: actionButtonText,
      requiresAction: requiresAction,
      data: data ?? {},
      createdAt: DateTime.now(),
    );
  }
}

enum NotificationScenario {
  hotelBooking,
  restaurantDiscovery,
  promotionalCampaign,
  reviewRequest,
}

/// Debug widget for testing notifications in development
class NotificationTestWidget extends ConsumerWidget {
  const NotificationTestWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notification Testing',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton(
                  onPressed: () => NotificationTester.testAllNotificationTypes(ref),
                  child: const Text('Test All Types'),
                ),
                ElevatedButton(
                  onPressed: () => NotificationTester.testScenario(
                    ref,
                    NotificationScenario.hotelBooking,
                  ),
                  child: const Text('Hotel Booking'),
                ),
                ElevatedButton(
                  onPressed: () => NotificationTester.testScenario(
                    ref,
                    NotificationScenario.restaurantDiscovery,
                  ),
                  child: const Text('Restaurant'),
                ),
                ElevatedButton(
                  onPressed: () => NotificationTester.testScenario(
                    ref,
                    NotificationScenario.promotionalCampaign,
                  ),
                  child: const Text('Promotions'),
                ),
                ElevatedButton(
                  onPressed: () => NotificationTester.testTokenManagement(ref),
                  child: const Text('Test Token'),
                ),
                ElevatedButton(
                  onPressed: () => NotificationTester.testNotificationSettings(ref),
                  child: const Text('Test Settings'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}