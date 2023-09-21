import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_project/constants/colors.dart';
import 'package:ui_project/screens/widgets/cart_icon.dart';

class FirstRow extends StatefulWidget {
  const FirstRow({super.key});

  @override
  State<FirstRow> createState() => _FirstRowState();
}

class _FirstRowState extends State<FirstRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hey, Muqees",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: UpdatedColors.blue,
              ),
            ),
            CartIcon(
                iconColor: UpdatedColors.blue,
                itemNumber: 5,
                mainCircleColor: TextColors.textColor1)
          ],
        ),
      ),
    );
  }
}
