import 'package:flutter/material.dart';

import 'package:ui_project/screens/home_view/home_view.dart';
import 'package:ui_project/screens/onboarding_view/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Manrope'),
      initialRoute: "/",
      routes: {
        "/": (context) => const OnBoardingView(),
      },
    );
  }
}
