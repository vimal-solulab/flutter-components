import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import 'spacer.dart';
import 'text.dart';

class SelectorItem<T> {
  final String title;
  final bool selected;
  final T item;
  final String? subtitle;

  SelectorItem({
    required this.title,
    required this.selected,
    required this.item,
    this.subtitle,
  });
}

Future<void> showSelectorDialog<T>(
  BuildContext context, {
  String? title,
  required List<SelectorItem<T>> items,
  required ValueChanged<T> onSelectItem,
}) {
  return showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lawrence,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null)
              Container(
                height: 40,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: subhead1_grey(title, textAlign: TextAlign.center),
              ),

            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: items.map((item) {
                    return InkWell(
                      onTap: !item.selected
                          ? () {
                              onSelectItem(item.item);
                              Navigator.of(context).pop();
                            }
                          : null,
                      child: Column(
                        children: [
                          const Divider(height: 1, color: AppColors.steel10),
                          const VSpacer(12),
                          Text(
                            item.title,
                            style: AppTextStyles.body.withColor(
                              item.selected ? AppColors.jacob : AppColors.leah,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          if (item.subtitle != null) ...[
                            const SizedBox(height: 1),
                            subhead2_grey(
                              item.subtitle!,
                              textAlign: TextAlign.center,
                            ),
                          ],
                          const VSpacer(12),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
