import 'package:flutter/material.dart';

import 'containers.dart';

class TabBalance extends StatelessWidget {
  final Widget child;
  final bool borderTop;
  final bool borderBottom;

  const TabBalance({
    super.key,
    required this.child,
    this.borderTop = false,
    this.borderBottom = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Box44(
        borderTop: borderTop,
        borderBottom: borderBottom,
        child: Align(alignment: Alignment.centerLeft, child: child),
      ),
    );
  }
}

class TabPeriod extends StatelessWidget {
  final Widget child;
  final MainAxisAlignment horizontalArrangement;

  const TabPeriod({
    super.key,
    required this.child,
    this.horizontalArrangement = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Box44(
      child: Row(mainAxisAlignment: horizontalArrangement, children: [child]),
    );
  }
}
