import 'package:flutter/material.dart';
import 'package:ui_project/Functions/get_item_map.dart';
import 'package:ui_project/constants/colors.dart';

class PricingRow extends StatelessWidget {
  final List itemDetails;
  const PricingRow({super.key, required this.itemDetails});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "\$${itemDetails[0]['itemUnit']}",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: PrimaryColors.primaryBlue),
              ),
              TextSpan(
                  text: "/Per-Unit",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: PrimaryColors.primaryBlue))
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: UpdatedColors.blue,
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Center(
              child: Text(
                "\$2.00 OFF",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: TextColors.textColor1),
              ),
            ),
          ),
        ),
        Spacer(),
        Container(
          child: Text(
            "Reg. \$${itemDetails[0]["itemUnit"] + 2}.00 USD",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: TextColors.textColor2),
          ),
        )
      ],
    );
  }
}
