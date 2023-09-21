import 'package:flutter/material.dart';
import 'package:ui_project/constants/colors.dart';
import 'package:ui_project/toast/custom_toast.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: UpdatedColors.blue,
                width: 2,
              ),
              backgroundColor: TextColors.textColor1,
              fixedSize: Size(145, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
          onPressed: () {
            CustomToast.showToast("Added to cart");
          },
          child: Text(
            "Add to Cart",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: UpdatedColors.blue),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: UpdatedColors.blue,
                width: 2,
              ),
              backgroundColor: UpdatedColors.blue,
              fixedSize: Size(145, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
          onPressed: () {
            CustomToast.showToast("Try again later");
          },
          child: Text(
            "Buy Now",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: TextColors.textColor1),
          ),
        ),
      ],
    );
  }
}
