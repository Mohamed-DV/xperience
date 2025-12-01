import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:toastification/toastification.dart';
import 'package:spots_xplorer_app/main.dart';

part 'notification_repository.g.dart';

@riverpod
class NotificationRepository extends _$NotificationRepository {
  ToastificationItem? _currentToast; // لمنع التراكم (stacking)

  @override
  Future<void> build() async {}

  // --------------------------------------------------
  // 🎨 ألوان FIGMA
  // --------------------------------------------------
  static const Color redError = Color(0xFFE53935);     // 🔴 Rouge
  static const Color orangeWarn = Color(0xFFFFA726);   // 🟠 Orange
  static const Color greenSuccess = Color(0xFF43A047); // 🟢 Vert
  static const Color blueInfo = Color(0xFF1E88E5);      // 🔵 Bleu

  // --------------------------------------------------
  // 🧨 Toast Builder موحد
  // --------------------------------------------------
  void _show({
    required String title,
    required Color color,
    required ToastificationType type,
    Alignment position = Alignment.topCenter,
  }) {
    // 🛑 1. حذف أي Toast مفتوح (No Stacking)
    if (_currentToast != null) {
      toastification.dismiss(_currentToast!);
      _currentToast = null;
    }

    // 🟢 2. إنشاء Toast جديد
    _currentToast = toastification.show(
      context: MainApp.navigationKey.currentContext,
      type: type,
      style: ToastificationStyle.fillColored,
      backgroundColor: color,
      primaryColor: color,
      alignment: position,

      autoCloseDuration: null, // ❌ بلا Timer

      showProgressBar: false,
      dragToClose: true,
      closeButtonShowType: CloseButtonShowType.onHover,

      borderRadius: BorderRadius.circular(12),

      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),

      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  // --------------------------------------------------
  // 🔴 Error
  // --------------------------------------------------
  void showToastError({
    required String title,
    Alignment position = Alignment.topCenter,
  }) {
    _show(
      title: title,
      type: ToastificationType.error,
      color: redError,
      position: position,
    );
  }

  // --------------------------------------------------
  // 🟢 Success
  // --------------------------------------------------
  void showToastSuccess({
    required String title,
    Alignment position = Alignment.topCenter,
  }) {
    _show(
      title: title,
      type: ToastificationType.success,
      color: greenSuccess,
      position: position,
    );
  }

  // --------------------------------------------------
  // 🔵 Info
  // --------------------------------------------------
  void showToastInfo({
    required String title,
    Alignment position = Alignment.topCenter,
  }) {
    _show(
      title: title,
      type: ToastificationType.info,
      color: blueInfo,
      position: position,
    );
  }

  // --------------------------------------------------
  // 🟠 Warning
  // --------------------------------------------------
  void showToastWarning({
    required String title,
    Alignment position = Alignment.topCenter,
  }) {
    _show(
      title: title,
      type: ToastificationType.warning,
      color: orangeWarn,
      position: position,
    );
  }

  // --------------------------------------------------
  // 🟠 Warning: Complete Required Information
  // --------------------------------------------------
  void showCompletionWarning({
    String title = "Complétez les informations requises!",
    Alignment position = Alignment.bottomCenter,
  }) {
    _show(
      title: title,
      type: ToastificationType.warning,
      color: orangeWarn,
      position: position,
    );
  }
}
