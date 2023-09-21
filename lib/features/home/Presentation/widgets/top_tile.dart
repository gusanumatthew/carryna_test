import 'package:carryna_test/core/utils/colors.dart';
import 'package:carryna_test/core/utils/spacing.dart';
import 'package:carryna_test/features/home/data/products.dart';
import 'package:flutter/material.dart';

class TopTile extends StatelessWidget {
  const TopTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 26,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: CarryNaColors.greyBorder,
          borderRadius: BorderRadius.circular(10)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          Container(
              height: 22,
              padding: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                  color: CarryNaColors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Image.asset(top3[index]),
                        )),
              )),
          const Spacing.width(10),
          Row(
            children: List.generate(
                top.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(top[index]),
                    )),
          )
        ]),
      ),
    );
  }
}
