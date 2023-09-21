import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ui_project/Functions/get_filtered_list.dart';
import 'package:ui_project/constants/colors.dart';
import 'package:ui_project/screens/product_view/widget/item_card.dart';
import 'package:ui_project/screens/product_view/widget/product_appbar.dart';

class ProductView extends StatefulWidget {
  final String categoryName;
  const ProductView({super.key, required this.categoryName});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  String? tag;
  List tagList = [];

  @override
  void initState() {
    tag = 'All';
    tagList = FilteredList.getfilteredList(widget.categoryName, tag!);
    print(tagList);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20, top: 10),
                child: ProductAppBar(
                  categoryName: widget.categoryName,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 15, 10),
                height: 75,
                color: TextColors.textColor1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                              color: (tag == 'All')
                                  ? UpdatedColors.blue
                                  : UpdatedColors.grey,
                              width: 1),
                        ),
                        label: Container(
                          width: 80,
                          height: 30,
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: (tag == "All")
                                      ? TextColors.textColor1
                                      : UpdatedColors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        selected: (tag == "All") ? true : false,
                        selectedColor: UpdatedColors.blue,
                        backgroundColor: TextColors.textColor1,
                        onSelected: (value) {
                          setState(() {
                            tag = "All";
                            tagList = FilteredList.getfilteredList(
                                widget.categoryName, tag!);
                            print("Tag List $tagList");
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                              color: (tag == 'Popular')
                                  ? UpdatedColors.blue
                                  : UpdatedColors.grey,
                              width: 1),
                        ),
                        label: Container(
                          width: 80,
                          height: 30,
                          child: Center(
                            child: Text(
                              "Popular",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: (tag == "Popular")
                                      ? TextColors.textColor1
                                      : UpdatedColors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        selected: (tag == "Popular") ? true : false,
                        selectedColor: UpdatedColors.blue,
                        backgroundColor: TextColors.textColor1,
                        onSelected: (value) {
                          setState(() {
                            tag = "Popular";
                            tagList = FilteredList.getfilteredList(
                                widget.categoryName, tag!);
                            print("Tag List $tagList");
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                              color: (tag == 'Recommended')
                                  ? UpdatedColors.blue
                                  : UpdatedColors.grey,
                              width: 1),
                        ),
                        label: Container(
                          width: 110,
                          height: 30,
                          child: Center(
                            child: Text(
                              "Recommended",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: (tag == "Recommended")
                                      ? TextColors.textColor1
                                      : UpdatedColors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        selected: (tag == "Recommended") ? true : false,
                        selectedColor: UpdatedColors.blue,
                        backgroundColor: TextColors.textColor1,
                        onSelected: (value) {
                          setState(() {
                            tag = "Recommended";
                            tagList = FilteredList.getfilteredList(
                                widget.categoryName, tag!);
                            print("Tag List $tagList");
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                              color: (tag == 'Free Delivery')
                                  ? UpdatedColors.blue
                                  : UpdatedColors.grey,
                              width: 1),
                        ),
                        label: Container(
                          width: 110,
                          height: 30,
                          child: Center(
                            child: Text(
                              "Free Delivery",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: (tag == "Free Delivery")
                                      ? TextColors.textColor1
                                      : UpdatedColors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        selected: (tag == "Free Delivery") ? true : false,
                        selectedColor: UpdatedColors.blue,
                        backgroundColor: TextColors.textColor1,
                        onSelected: (value) {
                          setState(() {
                            tag = "Free Delivery";
                            tagList = FilteredList.getfilteredList(
                                widget.categoryName, tag!);
                            print("Tag List $tagList");
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: tagList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    return Container(
                      child: ProductItemCard(
                        tagList: tagList[index],
                        index: index,
                      ),
                    );
                  },
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
