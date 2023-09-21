import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_project/Functions/fetchList.dart';
import 'package:ui_project/constants/colors.dart';
import 'package:ui_project/constants/imagesPath.dart';

class Recomended extends StatefulWidget {
  const Recomended({super.key});

  @override
  State<Recomended> createState() => _RecomendedState();
}

class _RecomendedState extends State<Recomended> {
  List recommended = [];
  @override
  void initState() {
    recommended = FetchList.getList("Recommended");

    // TODO: implement initState
    super.initState();
  }
  // List<String> images = [
  //   ProductsImages.headphone3,
  //   ProductsImages.laptop2,
  //   ProductsImages.gpu4,
  //   ProductsImages.casing4,
  //   ProductsImages.keyboard4
  // ];
  // List<String> recommendedDeals = [
  //   "Head Phone",
  //   "Laptop",
  //   "Graphic Card",
  //   "Gaming Case",
  //   "Keaborad"
  // ];
  // List<String> recommendedItemPrice = [
  //   "\$12",
  //   "\$250",
  //   "\$150",
  //   "\$90",
  //   "\$60"
  // ];
  // List<String> productDecript = [
  //   "Gaming Head Phone",
  //   "Gaming",
  //   "8 GB",
  //   "RGB Case",
  //   "Mechanical Keys"
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommended",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: SecondaryColors.secBlack100),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 5),
            height: 250,
            child: ListView.builder(
                itemCount: recommended.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    height: 210,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: SecondaryColors.secBlack1,
                      border: Border.all(
                        width: 0.5,
                        color: TextColors.textColor2,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            height: 100,
                            width: 120,
                            padding: EdgeInsets.all(10),
                            child: Center(
                                child: Image.asset(
                                    recommended[index]['itemImage'])),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 2,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: SecondaryColors.secBlack20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 40,
                                child: Text(
                                  "${recommended[index]["itemName"]}",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: SecondaryColors.secBlack100),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "${recommended[index]["Tagline"]}",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: SecondaryColors.secBlack60),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: TextColors.textColor1,
                              border: Border.all(
                                  width: 0.5, color: TextColors.textColor2)),
                          margin: EdgeInsets.all(10),
                          height: 45,
                          width: 130,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Text.rich(TextSpan(
                                  text: "Unit",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: SecondaryColors.secBlack60),
                                  children: <InlineSpan>[
                                    TextSpan(
                                        text:
                                            " \$${recommended[index]["itemUnit"]}",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                SecondaryColors.secBlack100)),
                                  ])),
                              FloatingActionButton.small(
                                backgroundColor: UpdatedColors.blue,
                                heroTag: 'recbtn$index',
                                onPressed: () {},
                                child: FaIcon(FontAwesomeIcons.plus,
                                    color: TextColors.textColor1, size: 15),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
