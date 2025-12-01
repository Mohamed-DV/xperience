import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_messaging/firebase_messaging.dart' as fcm;
import 'package:flutter/foundation.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spots_xplorer_app/core/models/notification_models.dart';
import 'package:spots_xplorer_app/main.dart';
import 'package:logging/logging.dart';
// import 'package:firebase_messaging/firebase_messaging.dart' 

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// Background message handler
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(fcm.RemoteMessage message) async {
  // Initialize Firebase before handling background messages
  await Firebase.initializeApp();
  print("Handling a background message: ${message.messageId}");
}

// Future<String> createDynamicLink(String productId) async {
//   log("create dynamic link");
//   final DynamicLinkParameters parameters = DynamicLinkParameters(
//     link: Uri.parse('https://clicshop.page.link/product?product=$productId'),
//     uriPrefix: 'https://clicshop.page.link',
//     androidParameters: AndroidParameters(
//       packageName: 'app.shop.clic',
//       minimumVersion: 1,
//     ),
//     iosParameters: IOSParameters(
//       bundleId: 'app.shop.clic',
//       minimumVersion: '1.0.0',
//     ),
//   );

//   try {
//     final ShortDynamicLink shortLink = await FirebaseDynamicLinks.instance
//         .buildShortLink(parameters);
//     return shortLink.shortUrl.toString();
//   } catch (e) {
//     log('Error creating dynamic link: $e');
//     rethrow;
//   }
// }

// Future<void> checkInitialDynamicLink() async {
//   try {
//     final ProductDetailsController prodetController = Get.put(
//       ProductDetailsController(),
//     );
//     final PendingDynamicLinkData? initialLink =
//         await FirebaseDynamicLinks.instance.getInitialLink();

//     if (initialLink != null) {
//       final Uri? deepLink = initialLink.link;

//       if (deepLink != null && deepLink.queryParameters.containsKey('product')) {
//         String? productId = deepLink.queryParameters['product'];
//         if (productId != null) {
//           Product product = await InitServices().productById(productId);
//           prodetController.setSelectedProduct(product);
//           Get.to(() => ProductDetailsView());
//         } else {
//           print('Product ID is null.');
//         }
//       } else {
//         print('Product query parameter not found.');
//       }
//     }
//   } catch (e) {
//     print('Error checking initial dynamic link: $e');
//   }
// }

class PushNotificationService {
  static final _logger = Logger('PushNotificationService');
  final fcm.FirebaseMessaging _firebaseMessaging = fcm.FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  
  // Callbacks for handling notifications
  Function(AppNotification)? onNotificationReceived;
  Function(AppNotification)? onNotificationTapped;
  Function(String)? onTokenRefresh;

  // Current FCM token
  String? _currentToken;
   //NotificationSettings _settings = const NotificationSettings();
  // Notification settings
 //final  fcm.NotificationSettings _settings =  fcm.NotificationSettings();
 NotificationSettings _settings = const NotificationSettings();

  Future<void> init({
    Function(AppNotification)? onNotificationReceived,
    Function(AppNotification)? onNotificationTapped,
    Function(String)? onTokenRefresh,
  }) async {
    this.onNotificationReceived = onNotificationReceived;
    this.onNotificationTapped = onNotificationTapped;
    this.onTokenRefresh = onTokenRefresh;

    try {
      // Load notification settings
      await _loadNotificationSettings();

      // Request notification permissions
    fcm.NotificationSettings permissions = 
    await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
      criticalAlert: true,
      announcement: true,
    );


      if (permissions.authorizationStatus == fcm.AuthorizationStatus.authorized ||
          permissions.authorizationStatus == fcm.AuthorizationStatus.provisional) {
        _logger.info('User granted notification permission');

        // Initialize local notifications first
        await _initLocalNotifications();

        // Configure Firebase Messaging listeners
        await _setupFirebaseListeners();

        // Get and handle FCM token
        await _handleTokenRefresh();

        // Handle initial notification when app was terminated
        await _handleInitialMessage();

        _logger.info('Push notification service initialized successfully');
      } else {
        _logger.warning('User declined notification permission');
      }
    } catch (e) {
      _logger.severe('Failed to initialize push notification service: $e');
    }
  }

  Future<void> _setupFirebaseListeners() async {
    // Listen for foreground messages
    fcm.FirebaseMessaging.onMessage.listen((fcm.RemoteMessage message) {
      _logger.info('Received foreground message: ${message.messageId}');
      final appNotification = AppNotification.fromRemoteMessage(message);
      
      if (_settings.showInForeground) {
        _showLocalNotification(message);
      }
      
      onNotificationReceived?.call(appNotification);
    });

    // Handle background messages
    fcm.FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Handle notification taps when app is in background
    fcm.FirebaseMessaging.onMessageOpenedApp.listen((fcm.RemoteMessage message) {
      _logger.info('App opened from notification: ${message.messageId}');
      final appNotification = AppNotification.fromRemoteMessage(message);
      _handleNotificationTap(appNotification);
    });

    // Listen for token refresh
    _firebaseMessaging.onTokenRefresh.listen((String token) {
      _logger.info('FCM Token refreshed');
      _currentToken = token;
      _saveTokenToPreferences(token);
      onTokenRefresh?.call(token);
    });
  }

  Future<void> _handleInitialMessage() async {
    try {
      final fcm.RemoteMessage? initialMessage = 
          await _firebaseMessaging.getInitialMessage();
      
      if (initialMessage != null) {
        _logger.info('App launched from notification: ${initialMessage.messageId}');
        final appNotification = AppNotification.fromRemoteMessage(initialMessage);
        // Delay to ensure app is fully initialized
        Future.delayed(const Duration(seconds: 1), () {
          _handleNotificationTap(appNotification);
        });
      }
    } catch (e) {
      _logger.severe('Error handling initial message: $e');
    }
  }

  Future<void> _initLocalNotifications() async {
    // Android notification channels
    const List<AndroidNotificationChannel> channels = [
      AndroidNotificationChannel(
        'high_importance_channel',
        'High Importance Notifications',
        description: 'Important notifications that require immediate attention',
        importance: Importance.high,
        enableVibration: true,
        enableLights: true,
        ledColor: Color(0xFF2196F3),
      ),
      AndroidNotificationChannel(
        'default_channel',
        'Default Notifications',
        description: 'General notifications from the app',
        importance: Importance.defaultImportance,
      ),
      AndroidNotificationChannel(
        'promotion_channel',
        'Promotions & Offers',
        description: 'Special deals and promotional notifications',
        importance: Importance.defaultImportance,
        enableVibration: false,
      ),
    ];

    final androidImplementation = _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    if (androidImplementation != null) {
      for (final channel in channels) {
        await androidImplementation.createNotificationChannel(channel);
      }
    }

    // Initialize local notifications plugin
    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@drawable/ic_notification');
    
    const DarwinInitializationSettings iosSettings =
        DarwinInitializationSettings(
          requestAlertPermission: true,
          requestBadgePermission: true,
          requestSoundPermission: true,
        );

    const InitializationSettings initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    // iOS foreground notification setup
    await fcm.FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
          alert: _settings.allowSound,
          badge: _settings.allowBadge,
          sound: _settings.allowSound,
        );
  }

  void _onNotificationTapped(NotificationResponse response) {
    try {
      if (response.payload != null) {
        // Parse the payload and create AppNotification
        final Map<String, dynamic> data = 
            Map<String, dynamic>.from(response.payload as Map? ?? {});
        
        final appNotification = AppNotification.fromJson(data);
        _handleNotificationTap(appNotification);
      }
    } catch (e) {
      _logger.severe('Error handling notification tap: $e');
    }
  }

  void _showLocalNotification(fcm.RemoteMessage message) async {
    fcm.RemoteNotification? notification = message.notification;
    final appNotification = AppNotification.fromRemoteMessage(message);
final imageBitmap = appNotification.imageUrl != null
    ? await _downloadImage(appNotification.imageUrl!)
    : null;

    if (notification != null) {
      // Determine channel based on notification type
      String channelId = _getChannelIdForType(appNotification.type);
      
      // Platform-specific notification details
      final NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: AndroidNotificationDetails(
          channelId,
          _getChannelNameForType(appNotification.type),
          channelDescription: 'Notifications for ${appNotification.type.name}',
          importance: _getImportanceForPriority(appNotification.priority),
          priority: _getPriorityForNotification(appNotification.priority),
          enableVibration: _settings.allowVibration,
          enableLights: true,
          color: const Color(0xFF2196F3),
         largeIcon: imageBitmap,
styleInformation: imageBitmap != null
    ? BigPictureStyleInformation(
        imageBitmap,
        contentTitle: notification.title,
        summaryText: notification.body,
      )
    : BigTextStyleInformation(
        notification.body ?? '',
        contentTitle: notification.title,
      ),

          actions: appNotification.requiresAction && 
                   appNotification.actionButtonText != null
              ? [
                  AndroidNotificationAction(
                    'action_id',
                    appNotification.actionButtonText!,
                  ),
                ]
              : null,
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: _settings.allowSound,
          presentBadge: _settings.allowBadge,
          presentSound: _settings.allowSound,
          sound: 'default.wav',
          subtitle: appNotification.type.name.toUpperCase(),
          attachments: appNotification.imageUrl != null
              ? [DarwinNotificationAttachment(appNotification.imageUrl!)]
              : null,
        ),
      );

      // Show the notification
      await _flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        platformChannelSpecifics,
        payload: appNotification.toJson().toString(),
      );
    }
  }

  String _getChannelIdForType(NotificationType type) {
    switch (type) {
      case NotificationType.promotion:
        return 'promotion_channel';
      case NotificationType.reservation:
      case NotificationType.bookingUpdate:
        return 'high_importance_channel';
      default:
        return 'default_channel';
    }
  }

  String _getChannelNameForType(NotificationType type) {
    switch (type) {
      case NotificationType.promotion:
        return 'Promotions & Offers';
      case NotificationType.reservation:
        return 'Reservations';
      case NotificationType.bookingUpdate:
        return 'Booking Updates';
      case NotificationType.hotel:
        return 'Hotel Notifications';
      case NotificationType.restaurant:
        return 'Restaurant Notifications';
      case NotificationType.review:
        return 'Reviews';
      case NotificationType.reminder:
        return 'Reminders';
      default:
        return 'General Notifications';
    }
  }

  Importance _getImportanceForPriority(NotificationPriority priority) {
    switch (priority) {
      case NotificationPriority.low:
        return Importance.low;
      case NotificationPriority.high:
        return Importance.high;
      case NotificationPriority.urgent:
        return Importance.max;
      default:
        return Importance.defaultImportance;
    }
  }

  Priority _getPriorityForNotification(NotificationPriority priority) {
    switch (priority) {
      case NotificationPriority.low:
        return Priority.low;
      case NotificationPriority.high:
        return Priority.high;
      case NotificationPriority.urgent:
        return Priority.max;
      default:
        return Priority.defaultPriority;
    }
  }

  void _handleNotificationTap(AppNotification notification) {
    _logger.info('Handling notification tap: ${notification.title}');
    
    try {
      final context = MainApp.navigationKey.currentContext;
      if (context == null) {
        _logger.warning('Navigation context is null');
        return;
      }

      // Call the registered callback
      onNotificationTapped?.call(notification);

      // Handle navigation based on notification type and data
      _navigateBasedOnNotification(context, notification);
    } catch (e) {
      _logger.severe('Error handling notification tap: $e');
    }
  }

  void _navigateBasedOnNotification(BuildContext context, AppNotification notification) {
    try {
      // If there's a custom action URL, use it
      if (notification.actionUrl != null) {
        context.go(notification.actionUrl!);
        return;
      }

      // Navigate based on notification type and entity ID
      switch (notification.type) {
        case NotificationType.reservation:
        case NotificationType.bookingUpdate:
          if (notification.entityId != null) {
            context.go('/reservation/details/${notification.entityId}');
          } else {
            context.go('/reservations');
          }
          break;
        
        case NotificationType.hotel:
          if (notification.entityId != null) {
            context.go('/hotel/details/${notification.entityId}');
          } else {
            context.go('/home');
          }
          break;
        
        case NotificationType.restaurant:
          if (notification.entityId != null) {
            context.go('/restaurant/details/${notification.entityId}');
          } else {
            context.go('/home');
          }
          break;
        
        case NotificationType.review:
          if (notification.entityId != null) {
            context.go('/review/${notification.entityId}');
          } else {
            context.go('/profile');
          }
          break;
        
        case NotificationType.promotion:
          context.go('/promotions');
          break;
        
        default:
          context.go('/home');
          break;
      }
    } catch (e) {
      _logger.severe('Error navigating from notification: $e');
      // Fallback to home
      context.go('/home');
    }
  }

  // Token Management
  Future<String?> getToken() async {
    try {
      final token = await _firebaseMessaging.getToken();
      if (token != null) {
        _currentToken = token;
        await _saveTokenToPreferences(token);
        _logger.info('FCM Token obtained: ${token.substring(0, 20)}...');
      }
      return token;
    } catch (e) {
      _logger.severe('Error getting FCM token: $e');
      return null;
    }
  }

  Future<void> _handleTokenRefresh() async {
    final token = await getToken();
    if (token != null) {
      await _uploadTokenToFirestore(token);
    }
  }

  Future<void> _saveTokenToPreferences(String token) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('fcm_token', token);
      await prefs.setString('fcm_token_timestamp', DateTime.now().toIso8601String());
    } catch (e) {
      _logger.severe('Error saving token to preferences: $e');
    }
  }

  Future<void> _uploadTokenToFirestore(String token) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('customerId');
      
      if (userId != null) {
        final fcmToken = FCMToken(
          token: token,
          createdAt: DateTime.now(),
          lastUpdated: DateTime.now(),
          userId: userId,
          platform: Theme.of(MainApp.navigationKey.currentContext!).platform.name,
        );

        await _firestore
            .collection('user_tokens')
            .doc(userId)
            .set(fcmToken.toJson(), SetOptions(merge: true));
        
        _logger.info('Token uploaded to Firestore for user: $userId');
      }
    } catch (e) {
      _logger.severe('Error uploading token to Firestore: $e');
    }
  }

  // Topic Management
  Future<void> subscribeToTopic(String topic) async {
    try {
      await _firebaseMessaging.subscribeToTopic(topic);
      await _updateTopicSubscription(topic, true);
      _logger.info('Subscribed to topic: $topic');
    } catch (e) {
      _logger.severe('Error subscribing to topic $topic: $e');
    }
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    try {
      await _firebaseMessaging.unsubscribeFromTopic(topic);
      await _updateTopicSubscription(topic, false);
      _logger.info('Unsubscribed from topic: $topic');
    } catch (e) {
      _logger.severe('Error unsubscribing from topic $topic: $e');
    }
  }

  Future<void> subscribeToMultipleTopics(List<String> topics) async {
    for (final topic in topics) {
      await subscribeToTopic(topic);
    }
  }

  Future<void> _updateTopicSubscription(String topic, bool isSubscribed) async {
    try {
      final updatedTopics = List<String>.from(_settings.subscribedTopics);
      
      if (isSubscribed && !updatedTopics.contains(topic)) {
        updatedTopics.add(topic);
      } else if (!isSubscribed && updatedTopics.contains(topic)) {
        updatedTopics.remove(topic);
      }
      
      _settings = _settings.copyWith(subscribedTopics: updatedTopics);
      await _saveNotificationSettings();
    } catch (e) {
      _logger.severe('Error updating topic subscription: $e');
    }
  }

  // Notification Settings Management
  Future<void> updateNotificationSettings(NotificationSettings settings) async {
    try {
      _settings = settings;
      await _saveNotificationSettings();
      
      // Update iOS foreground presentation options
      await fcm.FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
            alert: settings.allowSound,
            badge: settings.allowBadge,
            sound: settings.allowSound,
          );
      
      _logger.info('Notification settings updated');
    } catch (e) {
      _logger.severe('Error updating notification settings: $e');
    }
  }

  Future<void> _loadNotificationSettings() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final settingsJson = prefs.getString('notification_settings');
      
      if (settingsJson != null) {
        final Map<String, dynamic> settingsMap = Map<String, dynamic>.from(settingsJson as Map);
        _settings = NotificationSettings.fromJson(settingsMap);
      }
    } catch (e) {
      _logger.warning('Error loading notification settings, using defaults: $e');
      _settings = const NotificationSettings();
    }
  }

  Future<void> _saveNotificationSettings() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('notification_settings', _settings.toJson().toString());
    } catch (e) {
      _logger.severe('Error saving notification settings: $e');
    }
  }

  NotificationSettings get currentSettings => _settings;

  // Local Notification Creation
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
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('customerId');

      final appNotification = AppNotification(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: title,
        body: body,
        type: type,
        priority: priority,
        data: data ?? {},
        imageUrl: imageUrl,
        actionUrl: actionUrl,
        entityId: entityId,
        createdAt: DateTime.now(),
      );

      // Save to Firestore for persistence
      if (userId != null) {
        await _firestore.collection('notifications').add({
          'customerId': userId,
          'title': title,
          'body': body,
          'type': type.name,
          'priority': priority.name,
          'data': data ?? {},
          'imageUrl': imageUrl,
          'actionUrl': actionUrl,
          'entityId': entityId,
          'timestamp': FieldValue.serverTimestamp(),
          'isRead': false,
        });
      }

      // Create and show local notification
      final message = fcm.RemoteMessage(
        messageId: appNotification.id,
        notification: fcm.RemoteNotification(title: title, body: body),
        data: {
          'type': type.name,
          'priority': priority.name,
          'actionUrl': actionUrl ?? '',
          'entityId': entityId ?? '',
          'imageUrl': imageUrl ?? '',
          ...?data,
        },
      );

      _showLocalNotification(message);
    } catch (e) {
      _logger.severe('Error sending local notification: $e');
    }
  }

  // Notification History
  Future<List<AppNotification>> getNotificationHistory({int limit = 50}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('customerId');
      
      if (userId == null) return [];

      final query = await _firestore
          .collection('notifications')
          .where('customerId', isEqualTo: userId)
          .orderBy('timestamp', descending: true)
          .limit(limit)
          .get();

      return query.docs.map((doc) {
        final data = doc.data();
        return AppNotification(
          id: doc.id,
          title: data['title'] ?? '',
          body: data['body'] ?? '',
          type: NotificationType.values.firstWhere(
            (e) => e.name == data['type'],
            orElse: () => NotificationType.general,
          ),
          priority: NotificationPriority.values.firstWhere(
            (e) => e.name == data['priority'],
            orElse: () => NotificationPriority.normal,
          ),
          data: Map<String, dynamic>.from(data['data'] ?? {}),
          imageUrl: data['imageUrl'],
          actionUrl: data['actionUrl'],
          entityId: data['entityId'],
          isRead: data['isRead'] ?? false,
          createdAt: (data['timestamp'] as Timestamp?)?.toDate() ?? DateTime.now(),
        );
      }).toList();
    } catch (e) {
      _logger.severe('Error getting notification history: $e');
      return [];
    }
  }

  // Mark notification as read
  Future<void> markNotificationAsRead(String notificationId) async {
    try {
      await _firestore
          .collection('notifications')
          .doc(notificationId)
          .update({'isRead': true});
    } catch (e) {
      _logger.severe('Error marking notification as read: $e');
    }
  }

  // Clear all notifications
  Future<void> clearAllNotifications() async {
    try {
      await _flutterLocalNotificationsPlugin.cancelAll();
      _logger.info('All notifications cleared');
    } catch (e) {
      _logger.severe('Error clearing notifications: $e');
    }
  }

  // Get current FCM token
  String? get currentToken => _currentToken;

  // Check if notifications are enabled
  Future<bool> areNotificationsEnabled() async {
    final settings = await _firebaseMessaging.getNotificationSettings();
    return settings.authorizationStatus == fcm.AuthorizationStatus.authorized ||
           settings.authorizationStatus == fcm.AuthorizationStatus.provisional;
  }
}
Future<ByteArrayAndroidBitmap?> _downloadImage(String url) async {
  try {
    final uri = Uri.parse(url);
    final response = await HttpClient().getUrl(uri).then((req) => req.close());
    final bytes = await consolidateHttpClientResponseBytes(response);
    return ByteArrayAndroidBitmap(bytes);
  } catch (_) {
    return null;
  }
}
