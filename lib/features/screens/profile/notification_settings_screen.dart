import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spots_xplorer_app/core/models/notification_models.dart';
import 'package:spots_xplorer_app/core/services/notification_service_provider.dart';
import 'package:spots_xplorer_app/config/theme/theme.dart';
import 'package:toastification/toastification.dart';

class NotificationSettingsScreen extends ConsumerStatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  ConsumerState<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends ConsumerState<NotificationSettingsScreen> {
  late NotificationSettings _currentSettings;
  List<NotificationTopic> _topics = [];
  bool _isLoading = true;
  bool _hasChanges = false;

  @override
  void initState() {
    super.initState();
    _loadCurrentSettings();
  }

  Future<void> _loadCurrentSettings() async {
    try {
      final notificationService = ref.read(notificationServiceProvider.notifier);
      _currentSettings = notificationService.currentSettings;
      
      final topics = await ref.read(notificationTopicsProvider.future);
      setState(() {
        _topics = topics;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      _showError('Failed to load notification settings');
    }
  }

  Future<void> _saveSettings() async {
    try {
      setState(() {
        _isLoading = true;
      });

      final notificationService = ref.read(notificationServiceProvider.notifier);
      
      // Update notification settings
      await notificationService.updateNotificationSettings(_currentSettings);
      
      // Update topic subscriptions
      await notificationService.updateTopicSubscriptions(_topics);

      setState(() {
        _hasChanges = false;
        _isLoading = false;
      });

      _showSuccess('Notification settings updated successfully');
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      _showError('Failed to save notification settings');
    }
  }

  void _showSuccess(String message) {
    toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.fillColored,
      title: Text(message),
      alignment: Alignment.topCenter,
      autoCloseDuration: const Duration(seconds: 3),
      borderRadius: BorderRadius.circular(12.0),
    );
  }

  void _showError(String message) {
    toastification.show(
      context: context,
      type: ToastificationType.error,
      style: ToastificationStyle.fillColored,
      title: Text(message),
      alignment: Alignment.topCenter,
      autoCloseDuration: const Duration(seconds: 4),
      borderRadius: BorderRadius.circular(12.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Notification Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          if (_hasChanges)
            TextButton(
              onPressed: _isLoading ? null : _saveSettings,
              child: Text(
                'Save',
                style: TextStyle(
                  color: theme.primaryColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: _loadCurrentSettings,
              child: ListView(
                padding: EdgeInsets.all(16.w),
                children: [
                  _buildGeneralSettings(),
                  SizedBox(height: 24.h),
                  _buildTopicSubscriptions(),
                  SizedBox(height: 24.h),
                  _buildAdvancedSettings(),
                  SizedBox(height: 24.h),
                  _buildTestSection(),
                  SizedBox(height: 80.h), // Extra space for save button
                ],
              ),
            ),
      floatingActionButton: _hasChanges
          ? FloatingActionButton.extended(
              onPressed: _isLoading ? null : _saveSettings,
              backgroundColor: theme.primaryColor,
              label: const Text('Save Changes'),
              icon: const Icon(Icons.save),
            )
          : null,
    );
  }

  Widget _buildGeneralSettings() {
    return _buildSection(
      title: 'General Settings',
      children: [
        _buildSwitchTile(
          title: 'Enable Notifications',
          subtitle: 'Receive push notifications from the app',
          value: _currentSettings.isEnabled,
          onChanged: (value) {
            setState(() {
              _currentSettings = _currentSettings.copyWith(isEnabled: value);
              _hasChanges = true;
            });
          },
        ),
        _buildSwitchTile(
          title: 'Sound',
          subtitle: 'Play sound for notifications',
          value: _currentSettings.allowSound,
          enabled: _currentSettings.isEnabled,
          onChanged: (value) {
            setState(() {
              _currentSettings = _currentSettings.copyWith(allowSound: value);
              _hasChanges = true;
            });
          },
        ),
        _buildSwitchTile(
          title: 'Vibration',
          subtitle: 'Vibrate device for notifications',
          value: _currentSettings.allowVibration,
          enabled: _currentSettings.isEnabled,
          onChanged: (value) {
            setState(() {
              _currentSettings = _currentSettings.copyWith(allowVibration: value);
              _hasChanges = true;
            });
          },
        ),
        _buildSwitchTile(
          title: 'Badge',
          subtitle: 'Show badge count on app icon',
          value: _currentSettings.allowBadge,
          enabled: _currentSettings.isEnabled,
          onChanged: (value) {
            setState(() {
              _currentSettings = _currentSettings.copyWith(allowBadge: value);
              _hasChanges = true;
            });
          },
        ),
        _buildSwitchTile(
          title: 'Show in Foreground',
          subtitle: 'Display notifications when app is open',
          value: _currentSettings.showInForeground,
          enabled: _currentSettings.isEnabled,
          onChanged: (value) {
            setState(() {
              _currentSettings = _currentSettings.copyWith(showInForeground: value);
              _hasChanges = true;
            });
          },
        ),
      ],
    );
  }

  Widget _buildTopicSubscriptions() {
    return _buildSection(
      title: 'Notification Topics',
      subtitle: 'Choose which types of notifications you want to receive',
      children: [
        ..._topics.map((topic) => _buildTopicTile(topic)),
      ],
    );
  }

  Widget _buildTopicTile(NotificationTopic topic) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: SwitchListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
        title: Row(
          children: [
            Text(
              topic.icon ?? '📢',
              style: TextStyle(fontSize: 20.sp),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                topic.name,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(left: 32.w, top: 4.h),
          child: Text(
            topic.description,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey[600],
            ),
          ),
        ),
        value: topic.isSubscribed,
        onChanged: _currentSettings.isEnabled && topic.isOptional
            ? (value) {
                setState(() {
                  final index = _topics.indexOf(topic);
                  _topics[index] = topic.copyWith(isSubscribed: value);
                  _hasChanges = true;
                });
              }
            : null,
        activeColor: theme.primaryColor,
      ),
    );
  }

  Widget _buildAdvancedSettings() {
    return _buildSection(
      title: 'Advanced Settings',
      children: [
        _buildSwitchTile(
          title: 'Promotional Notifications',
          subtitle: 'Receive notifications about offers and deals',
          value: _currentSettings.allowPromotions,
          enabled: _currentSettings.isEnabled,
          onChanged: (value) {
            setState(() {
              _currentSettings = _currentSettings.copyWith(allowPromotions: value);
              _hasChanges = true;
            });
          },
        ),
        _buildSwitchTile(
          title: 'Reservation Updates',
          subtitle: 'Get notified about booking changes',
          value: _currentSettings.allowReservationUpdates,
          enabled: _currentSettings.isEnabled,
          onChanged: (value) {
            setState(() {
              _currentSettings = _currentSettings.copyWith(allowReservationUpdates: value);
              _hasChanges = true;
            });
          },
        ),
        _buildSwitchTile(
          title: 'Reminders',
          subtitle: 'Receive helpful reminders',
          value: _currentSettings.allowReminders,
          enabled: _currentSettings.isEnabled,
          onChanged: (value) {
            setState(() {
              _currentSettings = _currentSettings.copyWith(allowReminders: value);
              _hasChanges = true;
            });
          },
        ),
        _buildSwitchTile(
          title: 'Review Requests',
          subtitle: 'Get notified to review your experiences',
          value: _currentSettings.allowReviews,
          enabled: _currentSettings.isEnabled,
          onChanged: (value) {
            setState(() {
              _currentSettings = _currentSettings.copyWith(allowReviews: value);
              _hasChanges = true;
            });
          },
        ),
      ],
    );
  }

  Widget _buildTestSection() {
    return _buildSection(
      title: 'Test Notifications',
      subtitle: 'Send a test notification to verify your settings',
      children: [
        Center(
          child: ElevatedButton.icon(
            onPressed: _currentSettings.isEnabled ? _sendTestNotification : null,
            icon: const Icon(Icons.notification_add),
            label: const Text('Send Test Notification'),
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.primaryColor,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _sendTestNotification() async {
    try {
      final notificationService = ref.read(notificationServiceProvider.notifier);
      await notificationService.sendTestNotification();
      _showSuccess('Test notification sent successfully');
    } catch (e) {
      _showError('Failed to send test notification');
    }
  }

  Widget _buildSection({
    required String title,
    String? subtitle,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
        ),
        if (subtitle != null) ...[
          SizedBox(height: 4.h),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey[600],
            ),
          ),
        ],
        SizedBox(height: 16.h),
        ...children,
      ],
    );
  }

  Widget _buildSwitchTile({
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
    bool enabled = true,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        color: enabled ? Colors.white : Colors.grey[100],
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey[200]!),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: SwitchListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: enabled ? Colors.black87 : Colors.grey[500],
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 14.sp,
            color: enabled ? Colors.grey[600] : Colors.grey[400],
          ),
        ),
        value: value,
        onChanged: enabled ? onChanged : null,
        activeColor: theme.primaryColor,
      ),
    );
  }
}