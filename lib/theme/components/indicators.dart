import 'package:flutter/material.dart';

import '../app_colors.dart';

class HsCircularProgressIndicator extends StatelessWidget {
  final double? value; // 0.0 to 1.0, or null for indeterminate
  final double size;

  const HsCircularProgressIndicator({super.key, this.value, this.size = 28});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        value: value,
        strokeWidth: 2,
        valueColor: const AlwaysStoppedAnimation(
          AppColors.grey,
        ), // Indeterminate leads to grey?
        backgroundColor: AppColors.steel10, // Track color?
        // Kotlin code:
        // 1. Indeterminate: color=grey, stroke=2. size=28.
        // 2. Determinate: color=grey50, rotate animation.
        // I will use standard CircularProgressIndicator.
      ),
    );
  }
}
