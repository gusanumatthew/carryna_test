import 'package:carryna_test/core/extension/texttheme_extension.dart';
import 'package:carryna_test/core/utils/colors.dart';
import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  final bool isSelected;
  final String text;
  final VoidCallback? onTap;

  const Bar({
    super.key,
    required this.isSelected,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 151,
        height: 23,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: switch (isSelected) {
            true => CarryNaColors.greyB,
            _ => CarryNaColors.darkLight
          },
        ),
        child: Text(
          text,
          style: textTheme.text1Regular.copyWith(
              fontSize: 12,
              color: switch (isSelected) {
                true => CarryNaColors.dark,
                _ => CarryNaColors.greyB
              }),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
