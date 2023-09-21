import 'package:flutter/material.dart';
import 'package:ui_project/constants/colors.dart';

class ProductDetails extends StatelessWidget {
  final List itemDetails;
  const ProductDetails({super.key, required this.itemDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: TextColors.textColor3,
            ),
          ),
          Container(
            height: 40,
            child: Text(
              itemDetails[0]['itemDescription'],
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: UpdatedColors.black),
            ),
          )
        ],
      ),
    );
  }
}
