import 'package:carryna_test/core/extension/texttheme_extension.dart';
import 'package:carryna_test/core/utils/spacing.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.product});
  final (String, String) product;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Image.asset(product.$2),
        const Spacing.tinyHeight(),
        Text(
          product.$1,
          style: textTheme.text1Regular.copyWith(fontSize: 12),
        )
      ],
    );
  }
}
