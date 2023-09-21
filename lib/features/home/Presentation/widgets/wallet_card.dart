import 'package:carryna_test/core/extension/texttheme_extension.dart';
import 'package:carryna_test/core/utils/colors.dart';
import 'package:carryna_test/core/utils/icons.dart';
import 'package:carryna_test/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: CarryNaColors.darkLight,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'N5,800',
                style: textTheme.header1Regular
                    .copyWith(color: CarryNaColors.greyB),
              ),
              const Spacing.tinyHeight(),
              Text(
                'Balance',
                style: textTheme.text1Regular.copyWith(
                  color: CarryNaColors.greyB,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                      color: CarryNaColors.greyB,
                      borderRadius: BorderRadius.circular(15)),
                  child: SvgPicture.asset(
                    AppIcons.pay,
                    fit: BoxFit.scaleDown,
                  )),
              const Spacing.smallHeight(),
              Text(
                'Pay',
                style: textTheme.text1Regular.copyWith(
                  color: CarryNaColors.greyB,
                  fontSize: 10,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
