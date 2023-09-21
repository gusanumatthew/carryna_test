import 'package:carryna_test/core/extension/texttheme_extension.dart';
import 'package:carryna_test/core/utils/colors.dart';
import 'package:carryna_test/core/utils/dimensions.dart';
import 'package:carryna_test/core/utils/icons.dart';
import 'package:carryna_test/core/utils/spacing.dart';
import 'package:carryna_test/features/home/Presentation/widgets/home_bar_type.dart';
import 'package:carryna_test/features/home/Presentation/widgets/home_bar_view.dart';
import 'package:carryna_test/features/home/Presentation/widgets/product_tile.dart';
import 'package:carryna_test/features/home/Presentation/widgets/top_tile.dart';
import 'package:carryna_test/features/home/data/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final ValueNotifier<bool> isTapped = ValueNotifier<bool>(false);
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: CarryNaColors.greyBorder,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: Dimensions.big,
                  left: Dimensions.big,
                  top: Dimensions.medium),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: CarryNaColors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset(
                        AppIcons.menu,
                        fit: BoxFit.scaleDown,
                      )),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: CarryNaColors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: SvgPicture.asset(
                            AppIcons.filter,
                            fit: BoxFit.scaleDown,
                          )),
                      Positioned(
                          top: -4,
                          right: 0,
                          child: SvgPicture.asset(AppIcons.eclipse))
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.6,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                      color: CarryNaColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacing.tinyHeight(),
                        Text(
                          'Promos & Wallets',
                          style: textTheme.text1Regular.copyWith(
                              color: CarryNaColors.white, fontSize: 12),
                        ),
                        const Spacing.bigHeight(),
                        HomeBarType(
                          onChanged: (v) => setState(() => index = v),
                          index: index,
                        ),
                        const Spacing.mediumHeight(),
                        HomeTypeView(
                          index: index,
                        ),
                      ]),
                ),
                ValueListenableBuilder(
                    valueListenable: isTapped,
                    builder: (context, value, child) {
                      return Positioned(
                        bottom: 0,
                        child: AnimatedContainer(
                          padding: const EdgeInsets.all(Dimensions.medium),
                          curve: Curves.bounceInOut,
                          duration: const Duration(milliseconds: 300),
                          height: switch (value == true) {
                            true when index == 1 =>
                              MediaQuery.sizeOf(context).height * 0.32,
                            true => MediaQuery.sizeOf(context).height * 0.2,
                            _ => MediaQuery.sizeOf(context).height * 0.57,
                          },
                          width: MediaQuery.sizeOf(context).width,
                          decoration: const BoxDecoration(
                              color: CarryNaColors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15))),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 8,
                                    width: 74,
                                    decoration: BoxDecoration(
                                        color: CarryNaColors.greyBorder,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'SEND and RECEIVE your items',
                                        style: textTheme.header1Bold,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const Spacing.mediumWidth(),
                                    Container(
                                        height: 38,
                                        width: 38,
                                        decoration: BoxDecoration(
                                            color: CarryNaColors.greyBorder,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: SvgPicture.asset(
                                          AppIcons.search,
                                          fit: BoxFit.scaleDown,
                                        )),
                                  ],
                                ),
                                Text(
                                  'Tap to upload item picture',
                                  style: textTheme.text1Regular.copyWith(
                                    fontSize: 12,
                                    color: CarryNaColors.greyB,
                                  ),
                                ),
                                const Spacing.mediumHeight(),
                                GridView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: products.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            childAspectRatio: 1.4,
                                            mainAxisSpacing: 10,
                                            crossAxisCount: 3),
                                    itemBuilder: ((context, index) => InkWell(
                                          onTap: () {
                                            isTapped.value = !isTapped.value;
                                          },
                                          child: Product(
                                            product: products[index],
                                          ),
                                        ))),
                                const Spacing.smallHeight(),
                                const TopTile(),
                                const Spacing.mediumHeight(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      decoration: BoxDecoration(
                                          color: CarryNaColors.greyBorder,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(AppIcons.call),
                                          const Spacing.smallWidth(),
                                          Text(
                                            'Call to Order',
                                            style: textTheme.text1Bold
                                                .copyWith(fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'SHORTCUT from Features',
                                              style: textTheme.text1Regular
                                                  .copyWith(
                                                fontSize: 7,
                                              ),
                                            ),
                                            Text(
                                              'Toggle on to be the Receiver',
                                              style: textTheme.text1Bold
                                                  .copyWith(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        const Spacing.tinyWidth(),
                                        SvgPicture.asset(AppIcons.toggle)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
