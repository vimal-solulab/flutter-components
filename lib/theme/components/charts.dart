import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:my_app/theme/components/text.dart';

import '../app_colors.dart';

// SemiCircleChart
class SemiCircleChart extends StatelessWidget {
  final List<double> percentValues;
  final String title;

  const SemiCircleChart({
    super.key,
    required this.percentValues,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Stack(
        children: [
          CustomPaint(
            size: Size.infinite,
            painter: _SemiCircleChartPainter(percentValues),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: title3_jacob(
                title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SemiCircleChartPainter extends CustomPainter {
  final List<double> percentValues;
  final Color baseColor = AppColors.redG;

  _SemiCircleChartPainter(this.percentValues);

  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = size.width * 0.2;
    final rect = Rect.fromLTWH(
      strokeWidth / 2,
      strokeWidth / 2,
      size.width - strokeWidth,
      (size.width - strokeWidth), // It's a circle rect, though we draw half
    );

    double startAngle = math.pi; // 180 degrees
    final colorParts =
        255 ~/ (percentValues.isEmpty ? 1 : percentValues.length);

    for (int i = 0; i < percentValues.length; i++) {
      final item = percentValues[i];
      final sweepAngle = (item / 100) * math.pi;
      final colorAlpha = (255 - i * colorParts);

      final paint = Paint()
        ..color = baseColor.withAlpha(colorAlpha)
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth;

      canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

// StackedBarChart
class StackBarSlice {
  final double value;
  final Color color;

  StackBarSlice({required this.value, required this.color});
}

class StackedBarChart extends StatelessWidget {
  final List<StackBarSlice> slices;

  const StackedBarChart({super.key, required this.slices});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        // spacing 1dp handled by margin in containers or Sizedbox
        children: slices.where((s) => s.value >= 1).map((s) {
          return Expanded(
            flex: s.value.toInt(), // flex takes int
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 0.5,
              ), // Approx 1dp gap total
              child: Container(
                decoration: BoxDecoration(
                  color: s.color,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
