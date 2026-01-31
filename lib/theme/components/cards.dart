import 'package:flutter/material.dart';

import '../app_colors.dart';

class CardsSwapInfo extends StatelessWidget {
  final Widget child;

  const CardsSwapInfo({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: Colors.transparent, // Assumed transparent as per kotlin
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.steel20, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [child]),
      ),
    );
  }
}
