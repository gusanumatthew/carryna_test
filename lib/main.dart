import 'package:carryna_test/core/services/navigation/navigation_route.dart';
import 'package:carryna_test/core/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarryNa());
}

class CarryNa extends StatelessWidget {
  const CarryNa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        colorScheme:
            ColorScheme.fromSeed(seedColor: CarryNaColors.primaryColor),
        useMaterial3: true,
      ),
      routes: CarryNaRoutes.getAll(),
    );
  }
}
