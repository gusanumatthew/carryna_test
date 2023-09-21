import 'package:carryna_test/features/home/Presentation/widgets/promos.dart';
import 'package:carryna_test/features/home/Presentation/widgets/walllets.dart';
import 'package:flutter/material.dart';

class HomeTypeView extends StatelessWidget {
  const HomeTypeView({super.key, this.index = 0});
  final int index;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (child, animation) {
        return ScaleTransition(
          scale: Tween<double>(begin: 0, end: 1).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: const Offset(0, 0),
            ).animate(animation),
            child: child,
          ),
        );
      },
      child: switch (index == 0) {
        true => const Promos(),
        _ => const Wallets(),
      },
    );
  }
}
