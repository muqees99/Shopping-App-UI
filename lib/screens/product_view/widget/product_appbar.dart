import 'package:flutter/material.dart';
import 'package:ui_project/constants/colors.dart';
import 'package:ui_project/screens/widgets/cart_icon.dart';

class ProductAppBar extends StatelessWidget {
  final String categoryName;
  const ProductAppBar({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: BackButton(
            color: UpdatedColors.black,
          ),
        ),
        Text(
          categoryName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: UpdatedColors.black,
          ),
        ),
        Spacer(),
        Icon(
          Icons.search,
          color: UpdatedColors.blue,
          size: 32,
        ),
        CartIcon(
            iconColor: UpdatedColors.blue,
            itemNumber: 5,
            mainCircleColor: TextColors.textColor1)
      ],
    );
  }
}
