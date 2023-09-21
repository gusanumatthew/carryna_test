import 'package:carryna_test/core/services/navigation/route_lists.dart';
import 'package:carryna_test/features/home/Presentation/pages/home.dart';
import 'package:carryna_test/features/startup/presentation/pages/landing_page.dart';
import 'package:carryna_test/features/startup/presentation/pages/splash.dart';
import 'package:flutter/material.dart';

class CarryNaRoutes {
  static Map<String, WidgetBuilder> getAll() {
    return {
      RouteList.splash: (context) => const Splash(),
      RouteList.landingPage: (context) => const LandingPage(),
      RouteList.homePage: (context) => const HomePage(),
    };
  }
}
