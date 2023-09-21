import 'package:carryna_test/core/extension/texttheme_extension.dart';
import 'package:carryna_test/core/utils/colors.dart';
import 'package:carryna_test/core/utils/spacing.dart';
import 'package:carryna_test/features/home/Presentation/widgets/wallet_card.dart';
import 'package:flutter/material.dart';

class Wallets extends StatelessWidget {
  const Wallets({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const WalletCard(),
        const Spacing.bigHeight(),
        Container(
          decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
              color: CarryNaColors.greyB,
            )),
          ),
          child: Text(
            'See history',
            style: textTheme.text1Regular
                .copyWith(fontSize: 10, color: CarryNaColors.greyB),
          ),
        )
      ],
    );
  }
}
