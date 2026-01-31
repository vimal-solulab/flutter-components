import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';

class HsSnackBar extends SnackBar {
  HsSnackBar({
    super.key,
    required String text,
    IconData? icon,
    Color? iconColor,
    Color? backgroundColor,
    bool showProgressBar = false,
    super.duration,
  }) : super(
         backgroundColor: Colors.transparent,
         elevation: 0,
         content: _HsSnackBarContent(
           text: text,
           icon: icon,
           iconColor: iconColor,
           backgroundColor: backgroundColor,
           showProgressBar: showProgressBar,
         ),
       );
}

class _HsSnackBarContent extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final bool showProgressBar;

  const _HsSnackBarContent({
    required this.text,
    this.icon,
    this.iconColor,
    this.backgroundColor,
    this.showProgressBar = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              if (icon != null) ...[
                Icon(icon, color: iconColor ?? AppColors.jacob, size: 24),
                const SizedBox(width: 12),
              ],
              Expanded(
                child: Text(
                  text,
                  style: AppTextStyles
                      .subhead2
                      .white, // Assuming white text on snackbar
                ),
              ),
            ],
          ),
          if (showProgressBar) ...[
            const SizedBox(height: 8),
            const LinearProgressIndicator(
              minHeight: 2,
              backgroundColor: AppColors.white50,
              valueColor: AlwaysStoppedAnimation(AppColors.jacob),
            ),
          ],
        ],
      ),
    );
  }
}

// Helpers to show snackbar
void showHsSnackBar(
  BuildContext context,
  String text, {
  IconData? icon,
  Color? iconColor,
  Color? backgroundColor,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    HsSnackBar(
      text: text,
      icon: icon,
      iconColor: iconColor,
      backgroundColor: backgroundColor,
    ),
  );
}
