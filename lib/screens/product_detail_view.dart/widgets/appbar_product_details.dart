import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../widgets/cart_icon.dart';

class ProductDetailAppBar extends StatefulWidget {
  final String itemName;
  const ProductDetailAppBar({super.key, required this.itemName});

  @override
  State<ProductDetailAppBar> createState() => _ProductDetailAppBarState();
}

class _ProductDetailAppBarState extends State<ProductDetailAppBar> {
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
          widget.itemName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: UpdatedColors.black,
          ),
        ),
        Spacer(),
        // Icon(
        //   Icons.search,
        //   color: UpdatedColors.blue,
        //   size: 32,
        // ),
        CartIcon(
            iconColor: UpdatedColors.blue,
            itemNumber: 5,
            mainCircleColor: TextColors.textColor1)
      ],
    );
  }
}
