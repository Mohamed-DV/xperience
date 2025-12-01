# Firebase Messaging Implementation Guide

## Overview

This guide covers the complete Firebase Cloud Messaging (FCM) implementation for the Spots Xplorer app, including setup, configuration, and usage.

## 🚀 Features Implemented

### ✅ Core Functionality
- [x] Firebase Cloud Messaging setup for Android and iOS
- [x] Local notification display with custom channels
- [x] Background and foreground message handling
- [x] Notification tap navigation with deep linking
- [x] FCM token management and auto-refresh
- [x] Topic subscription/unsubscription
- [x] Notification permissions handling

### ✅ Advanced Features
- [x] Type-safe notification models with Freezed
- [x] Comprehensive notification settings UI
- [x] Notification history with Firestore persistence
- [x] Rich notifications with images and actions
- [x] Priority-based notification channels
- [x] Riverpod state management integration
- [x] Logging and error handling

### ✅ UI Components
- [x] Notification settings screen with topic management
- [x] Notification history screen with read/unread status
- [x] Profile screen integration
- [x] Test notification functionality

## 📱 Platform Configuration

### Android Configuration

#### Manifest Permissions
```xml
<!-- /android/app/src/main/AndroidManifest.xml -->
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.WAKE_LOCK" />
<uses-permission android:name="android.permission.VIBRATE" />
<uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED" />
<uses-permission android:name="android.permission.POST_NOTIFICATIONS" />
```

#### Firebase Service Configuration
```xml
<!-- Firebase Cloud Messaging Service -->
<service
    android:name="io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingService"
    android:exported="false">
    <intent-filter>
        <action android:name="com.google.firebase.MESSAGING_EVENT" />
    </intent-filter>
</service>

<!-- Default notification settings -->
<meta-data
    android:name="com.google.firebase.messaging.default_notification_icon"
    android:resource="@drawable/ic_notification" />
<meta-data
    android:name="com.google.firebase.messaging.default_notification_color"
    android:resource="@color/notification_color" />
<meta-data
    android:name="com.google.firebase.messaging.default_notification_channel_id"
    android:value="high_importance_channel" />
```

### iOS Configuration

#### Info.plist Settings
```xml
<!-- /ios/Runner/Info.plist -->
<key>UIBackgroundModes</key>
<array>
    <string>background-fetch</string>
    <string>remote-notification</string>
</array>

<key>FirebaseMessagingAutoInitEnabled</key>
<true/>

<key>UIUserNotificationSettings</key>
<dict>
    <key>UIUserNotificationTypeAlert</key>
    <true/>
    <key>UIUserNotificationTypeBadge</key>
    <true/>
    <key>UIUserNotificationTypeSound</key>
    <true/>
</dict>
```

## 🏗️ Architecture

### Core Components

1. **PushNotificationService** (`/lib/core/services/firebase_services.dart`)
   - Main Firebase messaging service
   - Handles FCM initialization, token management, and message processing
   - Manages local notifications and navigation

2. **NotificationService Provider** (`/lib/core/services/notification_service_provider.dart`)
   - Riverpod provider for notification service
   - State management for notifications and settings
   - Reactive notification count and history

3. **Notification Models** (`/lib/core/models/notification_models.dart`)
   - Type-safe notification data structures
   - Settings and preferences models
   - Topic subscription models

4. **UI Screens**
   - Notification Settings Screen
   - Notification History Screen
   - Profile integration

### Data Flow

```
Firebase Cloud Messaging
    ↓
PushNotificationService
    ↓
NotificationService Provider (Riverpod)
    ↓
UI Components (Settings/History screens)
    ↓
Navigation (Deep linking)
```

## 🎯 Usage Examples

### Initialize Notification Service

```dart
// In main.dart - automatically initialized
await ref.read(notificationServiceProvider.future);
```

### Send Local Notification

```dart
final notificationService = ref.read(notificationServiceProvider.notifier);

await notificationService.sendLocalNotification(
  title: 'Hotel Booking Confirmed',
  body: 'Your reservation at Grand Hotel is confirmed',
  type: NotificationType.reservation,
  priority: NotificationPriority.high,
  entityId: 'booking_123',
  imageUrl: 'https://example.com/hotel.jpg',
);
```

### Subscribe to Topics

```dart
final notificationService = ref.read(notificationServiceProvider.notifier);

// Subscribe to a single topic
await notificationService.subscribeToTopic('hotel_offers');

// Update multiple topic subscriptions
await notificationService.updateTopicSubscriptions([
  NotificationTopic(id: 'promotions', isSubscribed: true),
  NotificationTopic(id: 'reviews', isSubscribed: false),
]);
```

### Update Notification Settings

```dart
final notificationService = ref.read(notificationServiceProvider.notifier);

final newSettings = NotificationSettings(
  isEnabled: true,
  allowSound: true,
  allowVibration: false,
  allowPromotions: true,
  subscribedTopics: ['general', 'bookings'],
);

await notificationService.updateNotificationSettings(newSettings);
```

### Get Notification History

```dart
final notificationService = ref.read(notificationServiceProvider.notifier);
final history = await notificationService.getNotificationHistory(limit: 20);
```

### Watch Reactive Providers

```dart
// Unread notification count
final unreadCount = ref.watch(unreadNotificationCountProvider);

// Recent notifications
final recentNotifications = ref.watch(recentNotificationsProvider);

// Available topics with subscription status
final topics = ref.watch(notificationTopicsProvider);
```

## 🔧 Notification Types and Navigation

### Notification Types

```dart
enum NotificationType {
  reservation,    // Hotel/restaurant bookings
  promotion,      // Special offers and deals
  reminder,       // Check-in reminders, etc.
  hotel,          // Hotel-related notifications
  restaurant,     // Restaurant-related notifications
  general,        // General app notifications
  review,         // Review requests
  bookingUpdate,  // Booking status changes
}
```

### Navigation Mapping

| Notification Type | Navigation Route | Parameters |
|------------------|------------------|------------|
| `reservation` | `/reservation/details/{entityId}` | entityId = booking ID |
| `bookingUpdate` | `/reservation/details/{entityId}` | entityId = booking ID |
| `hotel` | `/hotel/details/{entityId}` | entityId = hotel ID |
| `restaurant` | `/restaurant/details/{entityId}` | entityId = restaurant ID |
| `review` | `/review/{entityId}` | entityId = review target ID |
| `promotion` | `/promotions` | - |
| `general` | `/home` | - |

## 🧪 Testing

### Test Notifications

```dart
import 'package:spots_xplorer_app/core/utils/notification_tester.dart';

// Test all notification types
await NotificationTester.testAllNotificationTypes(ref);

// Test specific scenarios
await NotificationTester.testScenario(ref, NotificationScenario.hotelBooking);

// Test token management
await NotificationTester.testTokenManagement(ref);
```

### Debug Widget

Add the debug widget to any screen for testing:

```dart
import 'package:spots_xplorer_app/core/utils/notification_tester.dart';

// In your widget tree
const NotificationTestWidget()
```

## 📊 Firebase Console Setup

### Server Key Configuration

1. Go to Firebase Console → Project Settings → Cloud Messaging
2. Copy the Server Key for backend integration
3. Use the Server Key to send notifications from your backend

### Topic Management

Topics are automatically created when first subscribed to. Common topics:

- `general` - General app announcements
- `promotions` - Marketing and promotional content
- `new_hotels` - New hotel additions
- `new_restaurants` - New restaurant additions
- `app_updates` - App update notifications

## 🔐 Security Considerations

### Token Security
- FCM tokens are automatically managed and refreshed
- Tokens are stored securely in SharedPreferences
- Backend should validate tokens before sending notifications

### Permissions
- Users must grant notification permissions explicitly
- Settings allow granular control over notification types
- Users can unsubscribe from topics at any time

## 🐛 Troubleshooting

### Common Issues

1. **Notifications not appearing**
   - Check notification permissions
   - Verify Firebase configuration
   - Check device notification settings

2. **Background notifications not working**
   - Ensure background execution is enabled
   - Check battery optimization settings
   - Verify FCM service configuration

3. **Navigation not working from notifications**
   - Check route definitions
   - Verify navigation context availability
   - Ensure proper entityId is passed

### Debug Information

Enable detailed logging:

```dart
Logger.root.level = Level.ALL;
Logger.root.onRecord.listen((record) {
  print('${record.level.name}: ${record.time}: ${record.message}');
});
```

## 📚 Additional Resources

### Dependencies Used

```yaml
dependencies:
  firebase_core: ^3.13.0
  firebase_messaging: ^15.2.10
  flutter_local_notifications: ^19.4.0
  cloud_firestore: ^5.6.12
  riverpod_annotation: ^2.6.1
  freezed_annotation: ^2.4.4
  logging: ^1.3.0
```

### Firebase Documentation
- [Firebase Cloud Messaging](https://firebase.google.com/docs/cloud-messaging)
- [Flutter Firebase Messaging Plugin](https://firebase.flutter.dev/docs/messaging/overview)
- [Local Notifications Plugin](https://pub.dev/packages/flutter_local_notifications)

## 🚀 Future Enhancements

### Potential Improvements
- [ ] Scheduled notifications
- [ ] Rich push notifications with custom layouts
- [ ] Notification analytics and tracking
- [ ] A/B testing for notification content
- [ ] Push notification campaigns
- [ ] Geofencing-based notifications
- [ ] In-app notification center
- [ ] Notification sound customization

### Backend Integration
- [ ] REST API for sending notifications
- [ ] User segmentation for targeted notifications
- [ ] Notification templates and campaigns
- [ ] Analytics dashboard for notification performance

---

## 📞 Support

For technical support or questions about the Firebase messaging implementation, please refer to:

1. Firebase documentation
2. Flutter Firebase plugins documentation
3. Project README files
4. Code comments and inline documentation

The implementation is fully production-ready with comprehensive error handling, logging, and user controls.