import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import 'spacer.dart';
import 'text.dart';

class InfoErrorMessageDefault extends StatelessWidget {
  final IconData icon; // Using IconData instead of Painter for simplicity
  final String text;

  const InfoErrorMessageDefault({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            color: AppColors.raina,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Icon(icon, size: 48, color: AppColors.grey),
        ),
        const VSpacer(32),
        subhead2_grey(text, textAlign: TextAlign.center),
      ],
    );
  }
}

class InfoH3 extends StatelessWidget {
  final String text;

  const InfoH3({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: headline2_jacob(text),
    );
  }
}

class InfoH1 extends StatelessWidget {
  final String text;

  const InfoH1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: AppTextStyles.title2.leah),
          const SizedBox(height: 8),
          const Divider(height: 1, color: AppColors.grey50),
        ],
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;

  const InfoText({
    super.key,
    required this.text,
    this.padding = const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: padding, child: subhead2_grey(text));
  }
}

class InfoTextBody extends StatelessWidget {
  final String text;

  const InfoTextBody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: Text(text, style: AppTextStyles.body.bran),
    );
  }
}
