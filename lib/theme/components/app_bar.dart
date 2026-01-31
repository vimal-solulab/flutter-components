import 'package:flutter/material.dart';
import 'package:my_app/theme/components/text.dart';

import '../app_colors.dart';

class MenuItem {
  final String title;
  final IconData? icon;
  final bool enabled;
  final Color? tint;
  final bool showAlertDot;
  final VoidCallback onClick;

  const MenuItem({
    required this.title,
    required this.onClick,
    this.icon,
    this.enabled = true,
    this.tint,
    this.showAlertDot = false,
  });
}

class HsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? navigationIcon;
  final List<MenuItem> menuItems;
  final bool showSpinner;
  final Color? backgroundColor;

  const HsAppBar({
    super.key,
    this.title,
    this.navigationIcon,
    this.menuItems = const [],
    this.showSpinner = false,
    this.backgroundColor,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? AppColors.tyler,
      elevation: 0,
      leading: navigationIcon != null
          ? Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Center(child: navigationIcon),
            )
          : null,
      title: title != null
          ? title3_leah(title!, maxLines: 1, overflow: TextOverflow.ellipsis)
          : null,
      centerTitle: true,
      actions: [
        if (showSpinner)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation(AppColors.jacob),
              ),
            ),
          ),
        ...menuItems.map((item) => _buildMenuItem(item)),
        const SizedBox(width: 8),
      ],
    );
  }

  Widget _buildMenuItem(MenuItem item) {
    final color = item.enabled
        ? (item.tint ?? AppColors.jacob)
        : AppColors.grey50;

    if (item.icon != null) {
      return Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            icon: Icon(item.icon, color: color, size: 24),
            onPressed: item.enabled ? item.onClick : null,
            tooltip: item.title,
          ),
          if (item.showAlertDot)
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: AppColors.lucian,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      );
    } else {
      return TextButton(
        onPressed: item.enabled ? item.onClick : null,
        child: Text(
          item.title.toUpperCase(),
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
      );
    }
  }
}
