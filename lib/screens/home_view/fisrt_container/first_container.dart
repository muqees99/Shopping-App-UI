import 'package:flutter/material.dart';
import 'package:ui_project/constants/colors.dart';
import 'package:ui_project/screens/home_view/fisrt_container/widgets/first_row.dart';
import 'package:ui_project/screens/home_view/fisrt_container/widgets/second_row.dart';
import 'package:ui_project/screens/home_view/fisrt_container/widgets/third_row.dart';

class FisrtContainer extends StatefulWidget {
  const FisrtContainer({super.key});

  @override
  State<FisrtContainer> createState() => _MainMenuState();
}

class _MainMenuState extends State<FisrtContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      color: TextColors.textColor1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, top: 0, right: 20),
            child: const FirstRow(),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const SecondRow(),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const ThirdRow(),
          )
        ],
      ),
    );
  }
}
