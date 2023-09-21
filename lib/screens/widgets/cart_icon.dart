import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_project/constants/colors.dart';

class CartIcon extends StatefulWidget {
  final Color iconColor;
  final Color mainCircleColor;
  final int itemNumber;

  const CartIcon(
      {super.key,
      required this.iconColor,
      required this.itemNumber,
      required this.mainCircleColor});

  @override
  State<CartIcon> createState() => _CartIconState();
}

class _CartIconState extends State<CartIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          SizedBox(
            width: 43,
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.cartShopping,
                color: widget.iconColor,
                size: 25,
              ),
            ),
          ),
          Container(
              child: widget.itemNumber == 0
                  ? const Opacity(opacity: 0)
                  : widget.itemNumber <= 9
                      ? CircleAvatar(
                          radius: 10,
                          backgroundColor: widget.mainCircleColor,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: PrimaryColors.primaryOrange,
                            child: Center(
                              child: Text(
                                "${widget.itemNumber}",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: TextColors.textColor1,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        )
                      : CircleAvatar(
                          radius: 10,
                          backgroundColor: PrimaryColors.primaryBlue,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: PrimaryColors.primaryOrange,
                            child: Center(
                              child: Text(
                                ":D",
                                style: TextStyle(
                                    color: TextColors.textColor1,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ))
        ],
      ),
    );
  }
}
