import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'buttons.dart';
import 'text.dart';

class BottomSheetElementsButtons extends StatelessWidget {
  final String buttonPrimaryText;
  final VoidCallback onClickPrimary;
  final String? buttonDefaultText;
  final VoidCallback? onClickDefault;

  const BottomSheetElementsButtons({
    super.key,
    required this.buttonPrimaryText,
    required this.onClickPrimary,
    this.buttonDefaultText,
    this.onClickDefault,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(height: 1, color: AppColors.steel10),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ButtonPrimaryRed(
            title: buttonPrimaryText,
            onClick: onClickPrimary,
          ),
        ),
        if (buttonDefaultText != null) ...[
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ButtonPrimaryDefault(
              title: buttonDefaultText!,
              onClick: onClickDefault ?? () {},
            ),
          ),
        ],
        const SizedBox(height: 16),
      ],
    );
  }
}

class BottomSheetElementsHeader extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String subtitle;
  final VoidCallback onClickClose;

  const BottomSheetElementsHeader({
    super.key,
    this.icon,
    required this.title,
    required this.subtitle,
    required this.onClickClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 24, color: AppColors.grey), // Assuming tint
            const SizedBox(width: 12),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                headline2_leah(title),
                const SizedBox(height: 4),
                subhead2_grey(subtitle),
              ],
            ),
          ),
          IconButton(
            onPressed: onClickClose,
            icon: const Icon(Icons.close, color: AppColors.grey),
          ),
        ],
      ),
    );
  }
}
