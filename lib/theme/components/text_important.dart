import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import 'text.dart';

class TextImportant extends StatelessWidget {
  final String text;
  final String? title;
  final IconData? icon;
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;

  const TextImportant({
    super.key,
    required this.text,
    required this.borderColor,
    required this.backgroundColor,
    required this.textColor,
    required this.iconColor,
    this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null || icon != null) ...[
            Row(
              children: [
                if (icon != null) ...[
                  Icon(icon, color: iconColor, size: 20),
                  const SizedBox(width: 12),
                ],
                if (title != null)
                  Text(
                    title!,
                    style: AppTextStyles.subhead1.withColor(textColor),
                  ),
              ],
            ),
            const SizedBox(height: 12),
          ],
          if (text.isNotEmpty) subhead2_leah(text),
        ],
      ),
    );
  }
}

Widget TextImportantWarning({
  required String text,
  String? title,
  IconData? icon,
}) {
  return TextImportant(
    text: text,
    title: title,
    icon: icon,
    borderColor: AppColors.jacob,
    backgroundColor: AppColors.yellow20,
    textColor: AppColors.jacob,
    iconColor: AppColors.jacob,
  );
}

Widget TextImportantError({
  required String text,
  String? title,
  IconData? icon,
}) {
  return TextImportant(
    text: text,
    title: title,
    icon: icon,
    borderColor: AppColors.lucian,
    backgroundColor: AppColors.red20,
    textColor: AppColors.lucian,
    iconColor: AppColors.lucian,
  );
}
