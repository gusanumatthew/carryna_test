import 'package:carryna_test/core/extension/texttheme_extension.dart';
import 'package:carryna_test/core/utils/colors.dart';
import 'package:carryna_test/core/utils/images.dart';
import 'package:carryna_test/core/utils/spacing.dart';
import 'package:flutter/material.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({super.key});

  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        CircleAvatar(
            radius: 40,
            child: Image.asset(
              AppImages.avatar,
              height: 86,
            )),
        const Spacing.mediumHeight(),
        Text(
          'Welcome Back,',
          style: textTheme.text2Bold
              .copyWith(fontSize: 20, color: CarryNaColors.white),
        ),
        const Spacing.smallHeight(),
        Text(
          'Mummy’s',
          style: textTheme.text2Bold
              .copyWith(fontSize: 18, color: CarryNaColors.primaryFill),
        )
      ],
    );
  }
}
