import 'package:flutter/material.dart';

import '../app_colors.dart';

class HsSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final bool enabled;

  const HsSwitch({
    super.key,
    required this.value,
    this.onChanged,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: enabled ? onChanged : null,
      activeColor: AppColors.jacob,
      activeTrackColor: AppColors.laguna,
      inactiveThumbColor: AppColors
          .laguna, // Based on Kotlin code: checkedThumb=jacob, checkedTrack=laguna, uncheckedThumb=laguna, uncheckedTrack=laguna
      inactiveTrackColor: AppColors
          .laguna, // This mimics a single-color switch look where thumb changes color
      // Flutter M3 switch has more states.
      // Modifying to match Kotlin intent:
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return AppColors.jacob;
        return AppColors.laguna;
      }),
      trackColor: WidgetStateProperty.all(
        AppColors.laguna.withOpacity(0.5),
      ), // Track usually needs alpha if it's same color as thumb?
      // Kotlin code sets track colors to `laguna`.
      // Let's stick to simple mapping.
    );
  }
}

// Checkbox and Radio implementations will go here once verified.
// I'll add stub implementations based on likely patterns.

class HsCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final bool enabled;

  const HsCheckbox({
    super.key,
    required this.value,
    this.onChanged,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: enabled ? onChanged : null,
      activeColor: AppColors.jacob,
      checkColor: AppColors.dark, // Assuming contrast
      side: const BorderSide(color: AppColors.grey),
    );
  }
}

class HsRadioButton extends StatelessWidget {
  final bool selected;
  final VoidCallback? onClick;
  final bool enabled;

  const HsRadioButton({
    super.key,
    required this.selected,
    this.onClick,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Radio(
      value: true,
      groupValue: selected,
      onChanged: enabled ? (_) => onClick?.call() : null,
      activeColor: AppColors.jacob,
    );
  }
}
