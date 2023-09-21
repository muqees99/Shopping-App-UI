import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_project/Functions/fetchList.dart';

import '../../../../constants/colors.dart';
// import '../../../constants/imagesPath.dart';

class HotDeals extends StatefulWidget {
  const HotDeals({super.key});

  @override
  State<HotDeals> createState() => _HotDealsState();
}

class _HotDealsState extends State<HotDeals> {
  List hotDeal = [];
  @override
  void initState() {
    print(FetchList.getList('HotDeal'));
    hotDeal = FetchList.getList('HotDeal');
    print(hotDeal);
    // TODO: implement initState
    super.initState();
  }
  // List<String> images = [
  //   ProductsImages.monitor2,
  //   ProductsImages.mouse3,
  //   ProductsImages.keyboard4,
  //   ProductsImages.headphone3,
  //   ProductsImages.casing2,
  // ];
  // List<String> hotDeal = [
  //   "Monitor",
  //   "Mouse",
  //   "Keyboard",
  //   "Head Phone",
  //   "Gaming Case"
  // ];
  // List<String> recommendedItemPrice = [
  //   "\$200",
  //   "\$50",
  //   "\$70",
  //   "\$120",
  //   "\$150"
  // ];
  // List<String> productDecript = [
  //   "144Hz QHD",
  //   "Gaming RGB",
  //   "Mechnaical RGB",
  //   "Gaming Head Phone",
  //   "RGB Case"
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hot Deals",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: SecondaryColors.secBlack100),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 5, bottom: 90),
            height: 250,
            child: ListView.builder(
                itemCount: hotDeal.length,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            height: 100,
                            width: 120,
                            padding: EdgeInsets.all(10),
                            child: Center(
                                child:
                                    Image.asset(hotDeal[index]['itemImage'])),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    child: Text(
                                      "${hotDeal[index]['itemName']}",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: SecondaryColors.secBlack100),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "${hotDeal[index]['Tagline']}",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: SecondaryColors.secBlack60),
                                    ),
                                  ),
                                ],
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
                                            " \$${hotDeal![index]['itemUnit']}",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                SecondaryColors.secBlack100)),
                                  ])),
                              FloatingActionButton.small(
                                backgroundColor: UpdatedColors.blue,
                                heroTag: 'hotbtn$index',
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
