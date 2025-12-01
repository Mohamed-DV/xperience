import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spots_xplorer_app/core/models/notification_models.dart';
import 'package:spots_xplorer_app/core/services/notification_service_provider.dart';
import 'package:spots_xplorer_app/config/theme/theme.dart';
import 'package:intl/intl.dart';

class NotificationHistoryScreen extends ConsumerStatefulWidget {
  const NotificationHistoryScreen({super.key});

  @override
  ConsumerState<NotificationHistoryScreen> createState() =>
      _NotificationHistoryScreenState();
}

class _NotificationHistoryScreenState
    extends ConsumerState<NotificationHistoryScreen> {
  List<AppNotification> _notifications = [];
  bool _isLoading = true;
  bool _isLoadingMore = false;
  int _currentLimit = 20;

  @override
  void initState() {
    super.initState();
    _loadNotifications();
  }

  Future<void> _loadNotifications() async {
    try {
      setState(() {
        _isLoading = true;
      });

      final notificationService = ref.read(notificationServiceProvider.notifier);
      final notifications = await notificationService.getNotificationHistory(
        limit: _currentLimit,
      );

      setState(() {
        _notifications = notifications;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _loadMoreNotifications() async {
    if (_isLoadingMore) return;

    try {
      setState(() {
        _isLoadingMore = true;
      });

      _currentLimit += 20;
      final notificationService = ref.read(notificationServiceProvider.notifier);
      final notifications = await notificationService.getNotificationHistory(
        limit: _currentLimit,
      );

      setState(() {
        _notifications = notifications;
        _isLoadingMore = false;
      });
    } catch (e) {
      setState(() {
        _isLoadingMore = false;
      });
    }
  }

  Future<void> _markAsRead(AppNotification notification) async {
    if (notification.isRead) return;

    try {
      final notificationService = ref.read(notificationServiceProvider.notifier);
      await notificationService.markNotificationAsRead(notification.id);

      setState(() {
        final index = _notifications.indexWhere((n) => n.id == notification.id);
        if (index != -1) {
          _notifications[index] = notification.copyWith(isRead: true);
        }
      });

      // Invalidate the unread count provider
      ref.invalidate(unreadNotificationCountProvider);
    } catch (e) {
      // Handle error silently
    }
  }

  Future<void> _clearAllNotifications() async {
    try {
      final notificationService = ref.read(notificationServiceProvider.notifier);
      await notificationService.clearAllNotifications();

      setState(() {
        _notifications.clear();
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('All notifications cleared')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to clear notifications')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          if (_notifications.isNotEmpty)
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'clear_all') {
                  _showClearAllDialog();
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'clear_all',
                  child: Row(
                    children: [
                      Icon(Icons.clear_all, size: 20),
                      SizedBox(width: 8),
                      Text('Clear All'),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _notifications.isEmpty
              ? _buildEmptyState()
              : RefreshIndicator(
                  onRefresh: _loadNotifications,
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (scrollInfo) {
                      if (scrollInfo is ScrollEndNotification &&
                          scrollInfo.metrics.extentAfter < 200) {
                        _loadMoreNotifications();
                      }
                      return false;
                    },
                    child: ListView.builder(
                      padding: EdgeInsets.all(16.w),
                      itemCount: _notifications.length + (_isLoadingMore ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index == _notifications.length) {
                          return const Center(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: CircularProgressIndicator(),
                            ),
                          );
                        }

                        final notification = _notifications[index];
                        return _buildNotificationTile(notification);
                      },
                    ),
                  ),
                ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications_none,
            size: 80.sp,
            color: Colors.grey[400],
          ),
          SizedBox(height: 16.h),
          Text(
            'No Notifications',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'You don\'t have any notifications yet.',
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey[500],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          ElevatedButton(
            onPressed: _loadNotifications,
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.primaryColor,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: const Text('Refresh'),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationTile(AppNotification notification) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: notification.isRead ? Colors.white : Colors.blue[50],
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: notification.isRead ? Colors.grey[200]! : Colors.blue[200]!,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          _markAsRead(notification);
          _handleNotificationTap(notification);
        },
        contentPadding: EdgeInsets.all(16.w),
        leading: _buildNotificationIcon(notification),
        title: Text(
          notification.title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: notification.isRead ? FontWeight.w500 : FontWeight.w700,
            color: Colors.black87,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4.h),
            Text(
              notification.body,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
                fontWeight: notification.isRead ? FontWeight.normal : FontWeight.w500,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                _buildTypeChip(notification.type),
                const Spacer(),
                Text(
                  _formatTimestamp(notification.createdAt),
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: notification.isRead
            ? null
            : Container(
                width: 8.w,
                height: 8.w,
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
      ),
    );
  }

  Widget _buildNotificationIcon(AppNotification notification) {
    IconData iconData;
    Color iconColor;

    switch (notification.type) {
      case NotificationType.reservation:
      case NotificationType.bookingUpdate:
        iconData = Icons.calendar_today;
        iconColor = Colors.green;
        break;
      case NotificationType.promotion:
        iconData = Icons.local_offer;
        iconColor = Colors.orange;
        break;
      case NotificationType.hotel:
        iconData = Icons.hotel;
        iconColor = Colors.blue;
        break;
      case NotificationType.restaurant:
        iconData = Icons.restaurant;
        iconColor = Colors.red;
        break;
      case NotificationType.review:
        iconData = Icons.star;
        iconColor = Colors.yellow[700]!;
        break;
      case NotificationType.reminder:
        iconData = Icons.alarm;
        iconColor = Colors.purple;
        break;
      default:
        iconData = Icons.notifications;
        iconColor = Colors.grey;
        break;
    }

    return Container(
      width: 48.w,
      height: 48.w,
      decoration: BoxDecoration(
        color: iconColor.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        iconData,
        color: iconColor,
        size: 24.sp,
      ),
    );
  }

  Widget _buildTypeChip(NotificationType type) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: _getTypeColor(type).withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        _getTypeLabel(type),
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: _getTypeColor(type),
        ),
      ),
    );
  }

  Color _getTypeColor(NotificationType type) {
    switch (type) {
      case NotificationType.reservation:
      case NotificationType.bookingUpdate:
        return Colors.green;
      case NotificationType.promotion:
        return Colors.orange;
      case NotificationType.hotel:
        return Colors.blue;
      case NotificationType.restaurant:
        return Colors.red;
      case NotificationType.review:
        return Colors.yellow[700]!;
      case NotificationType.reminder:
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }

  String _getTypeLabel(NotificationType type) {
    switch (type) {
      case NotificationType.reservation:
        return 'Reservation';
      case NotificationType.bookingUpdate:
        return 'Booking';
      case NotificationType.promotion:
        return 'Promotion';
      case NotificationType.hotel:
        return 'Hotel';
      case NotificationType.restaurant:
        return 'Restaurant';
      case NotificationType.review:
        return 'Review';
      case NotificationType.reminder:
        return 'Reminder';
      case NotificationType.general:
        return 'General';
    }
  }

  String _formatTimestamp(DateTime? timestamp) {
    if (timestamp == null) return '';

    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays > 7) {
      return DateFormat('MMM d, y').format(timestamp);
    } else if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  void _handleNotificationTap(AppNotification notification) {
    // This will be handled by the notification service's navigation logic
    // You can add additional logic here if needed
  }

  void _showClearAllDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear All Notifications'),
        content: const Text(
          'Are you sure you want to clear all notifications? This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              context.pop();
              _clearAllNotifications();
            },
            child: Text(
              'Clear All',
              style: TextStyle(color: Colors.red[600]),
            ),
          ),
        ],
      ),
    );
  }
}