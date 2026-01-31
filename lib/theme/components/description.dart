import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import 'text.dart';

class Description extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextOverflow overflow;

  const Description({
    super.key,
    required this.text,
    this.maxLines,
    this.overflow = TextOverflow.clip,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: subhead2_grey(text, maxLines: maxLines, overflow: overflow),
    );
  }
}

class DoubleText extends StatelessWidget {
  final String title;
  final String body;
  final bool dimmed;
  final VoidCallback onClickTitle;
  final VoidCallback onClickSubtitle;

  const DoubleText({
    super.key,
    required this.title,
    required this.body,
    required this.dimmed,
    required this.onClickTitle,
    required this.onClickSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              InkWell(
                onTap: onClickTitle,
                child: Text(
                  title,
                  style: AppTextStyles.title2.withColor(
                    dimmed ? AppColors.grey : AppColors.leah,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 6),
              InkWell(
                onTap: onClickSubtitle,
                child: Text(
                  body,
                  style: AppTextStyles.body.withColor(
                    dimmed ? AppColors.grey50 : AppColors.grey,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
