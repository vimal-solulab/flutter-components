import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';

// Button Primary Variants

class ButtonPrimaryDefault extends StatelessWidget {
  final String title;
  final VoidCallback onClick;
  final bool enabled;

  const ButtonPrimaryDefault({
    super.key,
    required this.title,
    required this.onClick,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return _ButtonPrimaryBase(
      onClick: onClick,
      enabled: enabled,
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.headline2.white,
      ),
    );
  }
}

class ButtonPrimaryRed extends StatelessWidget {
  final String title;
  final VoidCallback onClick;
  final bool enabled;

  const ButtonPrimaryRed({
    super.key,
    required this.title,
    required this.onClick,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return _ButtonPrimaryBase(
      onClick: onClick,
      enabled: enabled,
      backgroundColor: AppColors.redG,
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.headline2.white,
      ),
    );
  }
}

class ButtonPrimaryYellow extends StatelessWidget {
  final String title;
  final VoidCallback onClick;
  final bool enabled;

  const ButtonPrimaryYellow({
    super.key,
    required this.title,
    required this.onClick,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return _ButtonPrimaryBase(
      onClick: onClick,
      enabled: enabled,
      backgroundColor: AppColors.jacob,
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.headline2.dark,
      ),
    );
  }
}

// Button Secondary Variants

class ButtonSecondaryDefault extends StatelessWidget {
  final String title;
  final VoidCallback onClick;
  final bool enabled;

  const ButtonSecondaryDefault({
    super.key,
    required this.title,
    required this.onClick,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return _ButtonSecondaryBase(
      onClick: onClick,
      enabled: enabled,
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.captionSB.withColor(
          enabled ? AppColors.leah : AppColors.grey50,
        ),
      ),
    );
  }
}

// Base implementations

class _ButtonPrimaryBase extends StatelessWidget {
  final VoidCallback onClick;
  final Widget child;
  final bool enabled;
  final Color? backgroundColor;

  const _ButtonPrimaryBase({
    required this.onClick,
    required this.child,
    this.enabled = true,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: enabled ? (backgroundColor ?? AppColors.jacob) : AppColors.grey50,
      // Default primary is Yellow/Jacob? No, ButtonPrimary in Kotlin defaults to RedG?
      // Kotlin `ButtonPrimary` defaults color to `ComposeAppTheme.colors.redG`.
      // But `ButtonPrimaryDefault` usually implies the main action color.
      // Let's check Kotlin again.
      // `ButtonPrimary` (line 302): color = ComposeAppTheme.colors.redG
      // So default is Red.
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: enabled ? onClick : null,
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}

class _ButtonSecondaryBase extends StatelessWidget {
  final VoidCallback onClick;
  final Widget child;
  final bool enabled;

  const _ButtonSecondaryBase({
    required this.onClick,
    required this.child,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      // Secondary buttons usually transparent/surface
      // Kotlin `ButtonSecondary` uses Surface, defaults to transparent?
      // It likely relies on parent color or surface.
      borderRadius: BorderRadius.circular(14),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: enabled ? onClick : null,
        child: Container(
          height: 28,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}

class HsIconButton extends StatelessWidget {
  final VoidCallback onClick;
  final IconData icon;
  final Color? tint;
  final bool enabled;

  const HsIconButton({
    super.key,
    required this.onClick,
    required this.icon,
    this.tint,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: enabled ? onClick : null,
      icon: Icon(
        icon,
        color: enabled ? (tint ?? AppColors.jacob) : AppColors.grey50,
      ),
    );
  }
}
