import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_xplorer_app/core/services/notification_service_provider.dart';
import 'package:logging/logging.dart';

/// Utility to check Firebase messaging implementation status
class NotificationImplementationChecker {
  static final _logger = Logger('NotificationChecker');

  /// Comprehensive check of the notification implementation
  static Future<Map<String, bool>> checkImplementation(WidgetRef ref) async {
    final results = <String, bool>{};

    try {
      final notificationService = ref.read(notificationServiceProvider.notifier);

      // Check 1: Service initialization
      try {
        await ref.read(notificationServiceProvider.future);
        results['service_initialized'] = true;
        _logger.info('✅ Notification service initialized');
      } catch (e) {
        results['service_initialized'] = false;
        _logger.severe('❌ Service initialization failed: $e');
      }

      // Check 2: FCM token availability
      try {
        final token = await notificationService.getToken();
        results['fcm_token_available'] = token != null && token.isNotEmpty;
        if (results['fcm_token_available']!) {
          _logger.info('✅ FCM token available: ${token!.substring(0, 20)}...');
        } else {
          _logger.warning('❌ FCM token not available');
        }
      } catch (e) {
        results['fcm_token_available'] = false;
        _logger.severe('❌ FCM token retrieval failed: $e');
      }

      // Check 3: Notification permissions
      try {
        final hasPermissions = await notificationService.areNotificationsEnabled();
        results['permissions_granted'] = hasPermissions;
        if (hasPermissions) {
          _logger.info('✅ Notification permissions granted');
        } else {
          _logger.warning('❌ Notification permissions not granted');
        }
      } catch (e) {
        results['permissions_granted'] = false;
        _logger.severe('❌ Permission check failed: $e');
      }

      // Check 4: Settings functionality
      try {
        final settings = notificationService.currentSettings;
        results['settings_loaded'] = settings.isEnabled;
        _logger.info('✅ Notification settings loaded: enabled=${settings.isEnabled}');
      } catch (e) {
        results['settings_loaded'] = false;
        _logger.severe('❌ Settings check failed: $e');
      }

      // Check 5: Topic subscription
      try {
        await notificationService.subscribeToTopic('implementation_test');
        await Future.delayed(const Duration(milliseconds: 500));
        await notificationService.unsubscribeFromTopic('implementation_test');
        results['topic_subscription'] = true;
        _logger.info('✅ Topic subscription working');
      } catch (e) {
        results['topic_subscription'] = false;
        _logger.severe('❌ Topic subscription failed: $e');
      }

      // Check 6: Notification providers
      try {
        final topics = await ref.read(notificationTopicsProvider.future);
        final unreadCount = await ref.read(unreadNotificationCountProvider.future);
        results['providers_working'] = topics.isNotEmpty;
        _logger.info('✅ Notification providers working: ${topics.length} topics, $unreadCount unread');
      } catch (e) {
        results['providers_working'] = false;
        _logger.severe('❌ Providers check failed: $e');
      }

      // Check 7: Local notification capability
      try {
        await notificationService.sendLocalNotification(
          title: 'Implementation Test',
          body: 'This is a test notification to verify the implementation',
        );
        results['local_notifications'] = true;
        _logger.info('✅ Local notifications working');
      } catch (e) {
        results['local_notifications'] = false;
        _logger.severe('❌ Local notifications failed: $e');
      }

    } catch (e) {
      _logger.severe('❌ Implementation check failed: $e');
    }

    return results;
  }

  /// Generate a report of the implementation status
  static String generateReport(Map<String, bool> results) {
    final buffer = StringBuffer();
    buffer.writeln('🔥 Firebase Messaging Implementation Report');
    buffer.writeln('=' * 50);
    buffer.writeln();

    final checks = [
      ('Service Initialization', 'service_initialized'),
      ('FCM Token Available', 'fcm_token_available'),
      ('Permissions Granted', 'permissions_granted'),
      ('Settings Loaded', 'settings_loaded'),
      ('Topic Subscription', 'topic_subscription'),
      ('Providers Working', 'providers_working'),
      ('Local Notifications', 'local_notifications'),
    ];

    int passed = 0;
    for (final (name, key) in checks) {
      final status = results[key] ?? false;
      final icon = status ? '✅' : '❌';
      buffer.writeln('$icon $name: ${status ? 'PASS' : 'FAIL'}');
      if (status) passed++;
    }

    buffer.writeln();
    buffer.writeln('Summary: $passed/${checks.length} checks passed');
    
    if (passed == checks.length) {
      buffer.writeln('🎉 All checks passed! Implementation is ready.');
    } else {
      buffer.writeln('⚠️  Some checks failed. Review the logs for details.');
    }

    return buffer.toString();
  }
}

/// Widget to display implementation status
class NotificationStatusWidget extends ConsumerStatefulWidget {
  const NotificationStatusWidget({super.key});

  @override
  ConsumerState<NotificationStatusWidget> createState() =>
      _NotificationStatusWidgetState();
}

class _NotificationStatusWidgetState
    extends ConsumerState<NotificationStatusWidget> {
  Map<String, bool>? _results;
  bool _isChecking = false;

  @override
  void initState() {
    super.initState();
    _runCheck();
  }

  Future<void> _runCheck() async {
    setState(() {
      _isChecking = true;
    });

    try {
      final results = await NotificationImplementationChecker.checkImplementation(ref);
      setState(() {
        _results = results;
        _isChecking = false;
      });
    } catch (e) {
      setState(() {
        _isChecking = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.fact_check, color: Colors.blue),
                const SizedBox(width: 8),
                Text(
                  'Implementation Status',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
                IconButton(
                  onPressed: _isChecking ? null : _runCheck,
                  icon: _isChecking
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.refresh),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (_isChecking)
              const Center(child: CircularProgressIndicator())
            else if (_results != null)
              _buildResultsList()
            else
              const Text('No results available'),
          ],
        ),
      ),
    );
  }

  Widget _buildResultsList() {
    final checks = [
      ('Service Initialization', 'service_initialized'),
      ('FCM Token Available', 'fcm_token_available'),
      ('Permissions Granted', 'permissions_granted'),
      ('Settings Loaded', 'settings_loaded'),
      ('Topic Subscription', 'topic_subscription'),
      ('Providers Working', 'providers_working'),
      ('Local Notifications', 'local_notifications'),
    ];

    return Column(
      children: checks.map((check) {
        final (name, key) = check;
        final status = _results![key] ?? false;
        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            status ? Icons.check_circle : Icons.error,
            color: status ? Colors.green : Colors.red,
          ),
          title: Text(name),
          trailing: Text(
            status ? 'PASS' : 'FAIL',
            style: TextStyle(
              color: status ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }).toList(),
    );
  }
}