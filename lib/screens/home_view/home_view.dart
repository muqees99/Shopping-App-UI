import 'package:flutter/material.dart';
import 'dart:ffi';
import 'package:ui_project/screens/home_view/fisrt_container/first_container.dart';
import 'package:ui_project/screens/home_view/second_container/widgets/coupon.dart';
import 'package:ui_project/screens/home_view/second_container/widgets/hotDeals.dart';
import 'package:ui_project/screens/home_view/second_container/widgets/recomended_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FisrtContainer(),
            Coupon(),
            Recomended(),
            HotDeals(),
          ],
        ),
      ),
    );
  }
}
