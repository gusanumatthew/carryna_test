import 'package:flutter/material.dart';

class CarryNaColors {
  static const Color primaryColor = Color(0xFFE50000);
  static const Color primaryFill = Color(0xFFF38F8F);
  static const Color white = Color(0xFFFFFFFF);
  static const Color darkLight = Color(0xFF232323);
  static const Color green = Color(0xFF13854E);
  static const Color greenLight = Color(0xFF34A853);
  static const Color dark = Color(0xFF1A1110);
  static const Color greyBorder = Color(0xFFD9D9D9);
  static const Color greyB = Color(0xFF6F6F6F);
  static MaterialColor grey = const MaterialColor(
    _greyPrimaryValue,
    <int, Color>{
      25: Color(0xFFFCFCFC),
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF4F4F5),
      200: Color(0xFFE4E4E7),
      300: Color(0xFFD1D1D6),
      400: Color(0xFFA0A0AB),
      500: Color(0xFF4B4B4D),
      600: Color(0XFF51525C),
      700: Color(0xFF515151),
      800: Color(0xFF26272B),
      900: Color(0xFF18181B),
    },
  );
  static Color lightRed = primaryColor.withOpacity(0.5);
  static Color redLightFill = const Color(0xFFFCF3F3);
  static Color redFill = const Color(0xFFFDE6E6);
  static const int _greyPrimaryValue = 0xFF4B4B4D;
}
