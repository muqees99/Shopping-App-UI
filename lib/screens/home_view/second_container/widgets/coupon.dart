import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_project/constants/colors.dart';
import 'package:ui_project/constants/imagesPath.dart';
import 'package:ui_project/screens/category_view/category_view.dart';

class Coupon extends StatelessWidget {
  const Coupon({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> couponText = [
      TextColors.textColor1,
      UpdatedColors.black,
      TextColors.textColor1,
      UpdatedColors.black,
      TextColors.textColor1,
      UpdatedColors.black,
    ];
    List<Color> couponColor = [
      PrimaryColors.primaryOrange,
      PrimaryColors.primaryYellow,
      PrimaryColors.primaryOrange,
      PrimaryColors.primaryYellow,
      PrimaryColors.primaryOrange,
      PrimaryColors.primaryYellow,
    ];
    List<String> images = [
      ProductsImages.laptop1,
      ProductsImages.casing1,
      ProductsImages.mouse1,
      ProductsImages.keyboard1,
      ProductsImages.headphone1,
      ProductsImages.gpu1,
    ];
    List<String> discountValue = [
      "50% OFF",
      "40% OFF",
      "10% OFF",
      "20% OFF",
      "30% OFF",
      "15% OFF",
    ];
    List<String> orderNumber = ["3", "2", "", "3", "", ""];
    return Container(
      height: 180,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: discountValue.length,
        itemBuilder: (context, index) {
          return Hero(
            tag: 'coupon$index',
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CategoryScreen();
                }));
              },
              child: Container(
                margin:
                    EdgeInsets.only(top: 15, right: 20, left: 20, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: couponColor[index]),
                height: 123,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 140,
                          child: Center(child: Image.asset(images[index])),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: couponText[index]),
                          ),
                          Text(
                            "${discountValue[index]}",
                            style: TextStyle(
                                color: couponText[index],
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "On first ${orderNumber[index]} order",
                            style: TextStyle(
                                color: couponText[index],
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
