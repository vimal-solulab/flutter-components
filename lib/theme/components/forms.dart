import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';

class HsInputSearch extends StatefulWidget {
  final String hint;
  final ValueChanged<String> onChanged;
  final String? initialValue;
  final bool enabled;
  final int? maxLength;
  final TextInputType keyboardType;

  const HsInputSearch({
    super.key,
    required this.hint,
    required this.onChanged,
    this.initialValue,
    this.enabled = true,
    this.maxLength,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<HsInputSearch> createState() => _HsInputSearchState();
}

class _HsInputSearchState extends State<HsInputSearch> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: AppColors.lawrence,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.steel20, width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Icon(Icons.search, color: AppColors.grey50), // Standard search icon
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _controller,
              enabled: widget.enabled,
              onChanged: widget.onChanged,
              keyboardType: widget.keyboardType,
              maxLength: widget.maxLength,
              style: AppTextStyles.body.leah,
              cursorColor: AppColors.jacob,
              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: AppTextStyles.body.grey50,
                border: InputBorder.none,
                isDense: true,
                counterText: "", // Hide counter
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          if (_controller.text.isNotEmpty)
            GestureDetector(
              onTap: () {
                _controller.clear();
                widget.onChanged("");
                setState(() {}); // Rebuild to hide icon
              },
              child: Icon(Icons.close, color: AppColors.grey, size: 20),
            ),
        ],
      ),
    );
  }
}
