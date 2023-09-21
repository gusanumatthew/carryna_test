import 'package:carryna_test/core/services/navigation/route_lists.dart';
import 'package:carryna_test/core/utils/colors.dart';
import 'package:carryna_test/core/utils/images.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RouteList.landingPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CarryNaColors.primaryColor,
      body: Center(child: Image.asset(AppImages.logo)),
    );
  }
}
