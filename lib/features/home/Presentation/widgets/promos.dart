import 'package:carryna_test/core/utils/dimensions.dart';
import 'package:carryna_test/core/utils/spacing.dart';
import 'package:carryna_test/features/home/Presentation/widgets/promo_tile.dart';
import 'package:flutter/material.dart';

class Promos extends StatelessWidget {
  const Promos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.large),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacing.bigHeight(),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.98,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 8,
                  crossAxisCount: 3),
              itemBuilder: ((context, index) => const PromoTile())),
        ],
      ),
    );
  }
}
