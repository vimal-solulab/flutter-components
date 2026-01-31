import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';

class Badge extends StatelessWidget {
  final String text;
  final Color? background;
  final Color? textColor;

  const Badge({super.key, required this.text, this.background, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: background ?? AppColors.jeremy,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: AppTextStyles.microSB.withColor(textColor ?? AppColors.bran),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class BadgeText extends StatelessWidget {
  final String text;
  final Color? background;
  final Color? textColor;

  const BadgeText({
    super.key,
    required this.text,
    this.background,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: background ?? AppColors.lucian,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: AppTextStyles.microSB.withColor(textColor ?? AppColors.white),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
