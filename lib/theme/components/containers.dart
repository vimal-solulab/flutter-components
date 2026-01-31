import 'package:flutter/material.dart';

import '../app_colors.dart';

class Box44 extends StatelessWidget {
  final Widget child;
  final bool borderTop;
  final bool borderBottom;
  final Color? color;

  const Box44({
    super.key,
    required this.child,
    this.borderTop = false,
    this.borderBottom = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        border: Border(
          top: borderTop
              ? const BorderSide(color: AppColors.steel10, width: 1)
              : BorderSide.none,
          bottom: borderBottom
              ? const BorderSide(color: AppColors.steel10, width: 1)
              : BorderSide.none,
        ),
      ),
      child: child,
    );
  }
}

class BoxTyler44 extends StatelessWidget {
  final Widget child;
  final bool borderTop;
  final bool borderBottom;

  const BoxTyler44({
    super.key,
    required this.child,
    this.borderTop = false,
    this.borderBottom = false,
  });

  @override
  Widget build(BuildContext context) {
    return Box44(
      borderTop: borderTop,
      borderBottom: borderBottom,
      color: AppColors.tyler,
      child: child,
    );
  }
}

class ButtonsGroupWithShade extends StatelessWidget {
  final Widget child;

  const ButtonsGroupWithShade({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 24,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.transparent, AppColors.tyler],
              ),
            ),
          ),
          Container(
            color: AppColors.tyler,
            padding: const EdgeInsets.only(bottom: 2),
            child: child,
          ),
        ],
      ),
    );
  }
}
