import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'containers.dart';
import 'text.dart';

class HeaderStick extends StatelessWidget {
  final String text;
  final bool borderTop;

  const HeaderStick({super.key, required this.text, this.borderTop = false});

  @override
  Widget build(BuildContext context) {
    return BoxTyler44(
      borderTop: borderTop,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: subhead1_grey(text, maxLines: 1),
      ),
    );
  }
}

class HeaderSorting extends StatelessWidget {
  final Widget child;
  final bool borderTop;
  final bool borderBottom;
  final double height;

  const HeaderSorting({
    super.key,
    required this.child,
    this.borderTop = false,
    this.borderBottom = false,
    this.height = 44,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: AppColors.tyler,
        border: Border(
          top: borderTop
              ? const BorderSide(color: AppColors.steel10, width: 1)
              : BorderSide.none,
          bottom: borderBottom
              ? const BorderSide(color: AppColors.steel10, width: 1)
              : BorderSide.none,
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [child]),
      ),
    );
  }
}
