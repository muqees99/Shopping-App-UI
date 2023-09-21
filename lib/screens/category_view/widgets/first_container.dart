import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/colors.dart';
import '../../widgets/cart_icon.dart';

class FirstContainerCategory extends StatefulWidget {
  const FirstContainerCategory({super.key});

  @override
  State<FirstContainerCategory> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FirstContainerCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 49, right: 20),
            child: Row(
              children: [
                Text(
                  "Hey, Muqees",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: UpdatedColors.blue,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.search_sharp,
                  size: 31,
                  color: UpdatedColors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                CartIcon(
                    iconColor: UpdatedColors.blue,
                    itemNumber: 5,
                    mainCircleColor: TextColors.textColor1)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shop",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      color: UpdatedColors.black),
                ),
                Text(
                  "By Category:",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: UpdatedColors.black),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
