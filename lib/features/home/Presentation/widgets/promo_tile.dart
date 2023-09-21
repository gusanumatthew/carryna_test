import 'package:carryna_test/core/extension/texttheme_extension.dart';
import 'package:carryna_test/core/utils/colors.dart';
import 'package:carryna_test/core/utils/dimensions.dart';
import 'package:carryna_test/core/utils/icons.dart';
import 'package:carryna_test/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PromoTile extends StatelessWidget {
  const PromoTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(Dimensions.small),
      decoration: BoxDecoration(
          color: CarryNaColors.darkLight,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                  color: CarryNaColors.greyB,
                  borderRadius: BorderRadius.circular(15)),
              child: SvgPicture.asset(
                AppIcons.cloud,
                fit: BoxFit.scaleDown,
              )),
          const Spacing.smallHeight(),
          Text(
            'CyNA-92E0',
            style: textTheme.text1Regular.copyWith(color: CarryNaColors.greyB),
          )
        ],
      ),
    );
  }
}
