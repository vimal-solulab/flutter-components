import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_colors.dart';
import 'snackbar.dart';

class HudHelper {
  static void showSuccessMessage(
    BuildContext context, {
    required String text,
    Duration duration = const Duration(seconds: 4), // Short/Long mapping
    IconData? icon,
    Color? iconColor,
  }) {
    showHsSnackBar(
      context,
      text,
      icon: icon,
      iconColor: iconColor,
      backgroundColor: AppColors.greenD,
    );
  }

  static void showErrorMessage(
    BuildContext context, {
    required String text,
    Duration duration = const Duration(seconds: 4),
  }) {
    showHsSnackBar(context, text, backgroundColor: AppColors.redD);
  }

  static void showWarningMessage(
    BuildContext context, {
    required String text,
    Duration duration = const Duration(seconds: 4),
  }) {
    showHsSnackBar(
      context,
      text,
      icon: Icons.warning_amber_rounded, // Approximation of ic_attention
      iconColor: AppColors.jacob,
      backgroundColor: AppColors.grey,
    );
  }

  static void vibrate() {
    HapticFeedback.lightImpact(); // or medium
  }
}
