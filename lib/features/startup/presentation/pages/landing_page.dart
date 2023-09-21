import 'package:carryna_test/core/extension/textTheme_extension.dart';
import 'package:carryna_test/core/services/navigation/route_lists.dart';
import 'package:carryna_test/core/utils/colors.dart';
import 'package:carryna_test/core/utils/dimensions.dart';
import 'package:carryna_test/core/utils/icons.dart';
import 'package:carryna_test/core/utils/spacing.dart';
import 'package:carryna_test/core/utils/strings.dart';
import 'package:carryna_test/features/startup/presentation/widgets/slide_from_bottom.dart';
import 'package:carryna_test/features/startup/presentation/widgets/welcome_back.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
  }

  void _navigate() {
    Navigator.pushNamedAndRemoveUntil(
      context,
      RouteList.homePage,
      ModalRoute.withName(RouteList.homePage),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: CarryNaColors.primaryColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacing.largeHeight(),
              Padding(
                padding: const EdgeInsets.all(Dimensions.big),
                child: Column(
                  children: [
                    Text(
                      Strings.delivery,
                      style: textTheme.header1Bold.copyWith(
                        fontSize: 36,
                        color: CarryNaColors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacing.height(60),
                    SlideFromBottomWidget(
                      onCompleted: _navigate,
                      child: const WelcomeBack(),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Stack(
                children: [
                  SvgPicture.asset(AppIcons.lagos),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacing.height(
                            MediaQuery.sizeOf(context).height * 0.15),
                        Text(
                          'in Lagos',
                          style: textTheme.header1Bold.copyWith(
                              fontSize: 48, color: CarryNaColors.primaryFill),
                          textAlign: TextAlign.center,
                        ),
                        const Spacing.mediumHeight(),
                        Text(
                          'Carryna Logistics ®\n 2023',
                          style: textTheme.text1Bold
                              .copyWith(color: CarryNaColors.primaryFill),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
