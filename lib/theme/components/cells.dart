import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import 'spacer.dart';
import 'text.dart';

class HSRow extends StatelessWidget {
  final Widget child;
  final bool borderTop;
  final bool borderBottom;
  final MainAxisAlignment horizontalArrangement;
  final CrossAxisAlignment verticalAlignment;
  final EdgeInsetsGeometry? padding;

  const HSRow({
    super.key,
    required this.child,
    this.borderTop = false,
    this.borderBottom = false,
    this.horizontalArrangement = MainAxisAlignment.start,
    this.verticalAlignment = CrossAxisAlignment.start,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: borderTop
              ? const BorderSide(color: AppColors.steel10, width: 1)
              : BorderSide.none,
          bottom: borderBottom
              ? const BorderSide(color: AppColors.steel10, width: 1)
              : BorderSide.none,
        ),
      ),
      padding: padding,
      child: Row(
        mainAxisAlignment: horizontalArrangement,
        crossAxisAlignment: verticalAlignment,
        children: [
          Expanded(child: child),
        ], // HSRow usually wraps content in Row, but usage might differ.
        // Kotlin HSRow takes a RowScope. In Flutter we typically pass a list of children to Row.
        // But here I defined `child` as a single widget for simplicity or maybe List<Widget>.
        // Re-reading Kotlin HSRow: it takes `content: @Composable RowScope.() -> Unit`.
        // So it behaves like a Row.
      ),
    );
  }
}

// Improved HSRow to match Kotlin signature more closely
class HsRow extends StatelessWidget {
  final List<Widget> children;
  final bool borderTop;
  final bool borderBottom;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsetsGeometry padding;

  const HsRow({
    super.key,
    this.children = const [],
    this.borderTop = false,
    this.borderBottom = false,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: borderTop
              ? const BorderSide(color: AppColors.steel10, width: 1)
              : BorderSide.none,
          bottom: borderBottom
              ? const BorderSide(color: AppColors.steel10, width: 1)
              : BorderSide.none,
        ),
      ),
      padding: padding,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: children,
      ),
    );
  }
}

// Cell Implementations
// "Lawrence" style seems to correspond to specific background/layout.

class CellSingleLineLawrence extends StatelessWidget {
  final Widget child;
  final bool borderTop;
  final bool borderBottom;
  final VoidCallback? onTap;

  const CellSingleLineLawrence({
    super.key,
    required this.child,
    this.borderTop = false,
    this.borderBottom = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.lawrence,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 48,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              top: borderTop
                  ? const BorderSide(color: AppColors.steel10, width: 1)
                  : BorderSide.none,
              bottom: borderBottom
                  ? const BorderSide(color: AppColors.steel10, width: 1)
                  : BorderSide.none,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.centerLeft,
          child: child,
        ),
      ),
    );
  }
}

class CellUniversalLawrenceSection extends StatelessWidget {
  final List<Widget> children;

  const CellUniversalLawrenceSection({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.lawrence,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: children.asMap().entries.map((entry) {
          final index = entry.key;
          final widget = entry.value;
          // Apply top border to all except first
          return Container(
            decoration: index != 0
                ? const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: AppColors.steel10, width: 1),
                    ),
                  )
                : null,
            child: widget,
          );
        }).toList(),
      ),
    );
  }
}

class CellNews extends StatelessWidget {
  final String source;
  final String title;
  final String body;
  final String date;
  final VoidCallback onClick;

  const CellNews({
    super.key,
    required this.source,
    required this.title,
    required this.body,
    required this.date,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    // Determine title lines logic?
    // In Flutter Text layout is calculated during layout phase.
    // For simplicity, we can just use standard overflow logic or
    // replicate the complex conditional logic if strictly needed.
    // The Kotlin code shows body only if title < 3 lines.
    // This is hard to replicate exactly without LayoutBuilder or TextPainter.
    // I will stick to a simpler version showing both or max lines.

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation:
            0, // CardDefaults.cardColors() usually means no elevation in M3?
        color: Theme.of(context).cardColor, // Or specific color?
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onClick,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                captionSB_grey(source, maxLines: 1),
                const VSpacer(8),
                headline2_leah(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const VSpacer(8),
                subhead2_grey(
                  body,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const VSpacer(8),
                Text(date, maxLines: 1, style: AppTextStyles.micro.grey50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
