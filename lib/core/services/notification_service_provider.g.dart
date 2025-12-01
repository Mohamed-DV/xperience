// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_service_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationTopicsHash() =>
    r'4dd150e87149bf09a45aacc284a877208b2f7b0a';

/// See also [notificationTopics].
@ProviderFor(notificationTopics)
final notificationTopicsProvider =
    AutoDisposeFutureProvider<List<NotificationTopic>>.internal(
  notificationTopics,
  name: r'notificationTopicsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$notificationTopicsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NotificationTopicsRef
    = AutoDisposeFutureProviderRef<List<NotificationTopic>>;
String _$unreadNotificationCountHash() =>
    r'4e5edbad1a3917c71717624f78157cbb4d99bbc7';

/// See also [unreadNotificationCount].
@ProviderFor(unreadNotificationCount)
final unreadNotificationCountProvider = AutoDisposeFutureProvider<int>.internal(
  unreadNotificationCount,
  name: r'unreadNotificationCountProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$unreadNotificationCountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UnreadNotificationCountRef = AutoDisposeFutureProviderRef<int>;
String _$recentNotificationsHash() =>
    r'6a787762ecf00f7feb38e0d33a22d4142c75ebad';

/// See also [recentNotifications].
@ProviderFor(recentNotifications)
final recentNotificationsProvider =
    AutoDisposeFutureProvider<List<AppNotification>>.internal(
  recentNotifications,
  name: r'recentNotificationsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recentNotificationsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RecentNotificationsRef
    = AutoDisposeFutureProviderRef<List<AppNotification>>;
String _$notificationServiceHash() =>
    r'd0eb39739d85a0f3fe669373bbb52c2eed4f2969';

/// See also [NotificationService].
@ProviderFor(NotificationService)
final notificationServiceProvider =
    AutoDisposeAsyncNotifierProvider<NotificationService, void>.internal(
  NotificationService.new,
  name: r'notificationServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$notificationServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NotificationService = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
