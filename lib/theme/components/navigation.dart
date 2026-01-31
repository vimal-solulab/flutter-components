import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';

class HsBottomNavigation extends StatelessWidget {
  final List<Widget> items;
  final Color backgroundColor;
  final double elevation;

  const HsBottomNavigation({
    super.key,
    required this.items,
    this.backgroundColor = AppColors.white,
    this.elevation = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      elevation: elevation,
      child: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.map((item) => Expanded(child: item)).toList(),
        ),
      ),
    );
  }
}

class HsBottomNavigationItem extends StatelessWidget {
  final IconData icon;
  final String? label;
  final bool selected;
  final VoidCallback onClick;
  final bool enabled;

  const HsBottomNavigationItem({
    super.key,
    required this.icon,
    this.label,
    required this.selected,
    required this.onClick,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final color = selected
        ? AppColors.jacob
        : AppColors.grey; // Example active/inactive colors
    // Kotlin code interpolates color.
    // I'll stick to simple switching.

    return InkWell(
      onTap: enabled ? onClick : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          if (label != null) ...[
            // In Kotlin, label alpha animates.
            // Here I'll just show it if selected (like standard bottom nav) or always?
            // Kotlin code: `animationProgress = if (alwaysShowLabel) 1f else progress`
            // Let's assume always show for simplicity or just simple text.
            Text(label!, style: AppTextStyles.micro.copyWith(color: color)),
          ],
        ],
      ),
    );
  }
}
