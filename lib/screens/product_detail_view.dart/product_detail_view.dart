import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_project/Functions/get_item_map.dart';
import 'package:ui_project/constants/colors.dart';
import 'package:ui_project/screens/product_detail_view.dart/widgets/appbar_product_details.dart';
import 'package:ui_project/screens/product_detail_view.dart/widgets/buttons.dart';
import 'package:ui_project/screens/product_detail_view.dart/widgets/details.dart';
import 'package:ui_project/screens/product_detail_view.dart/widgets/pricing_row.dart';
import 'package:ui_project/screens/product_detail_view.dart/widgets/review.dart';
import 'package:ui_project/screens/product_detail_view.dart/widgets/review_tile.dart';
import 'package:ui_project/screens/product_detail_view.dart/widgets/star_rating.dart';

class ProductDetailView extends StatefulWidget {
  final String itemName;
  const ProductDetailView({super.key, required this.itemName});

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  List itemDetails = [];
  @override
  void initState() {
    print(widget.itemName);
    setState(() {
      itemDetails = ItemDetails.getItemDetails(widget.itemName);
      // print(itemDetails);
    });
    print(ItemDetails.getItemDetails(widget.itemName));
    // TODO: implement i
    // nitState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20, top: 10),
                child: ProductDetailAppBar(itemName: widget.itemName),
              ),
              Container(
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          width: double.infinity,
                          height: 250,
                          child: Image.asset(itemDetails[0]['itemImage'])),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                          size: 30,
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text(
                  itemDetails[0]['itemName'],
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: UpdatedColors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: PricingRow(itemDetails: itemDetails),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: StarRating(itemDetails: itemDetails),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 10, 10, 0),
                child: ProductDetails(itemDetails: itemDetails),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 10, 10, 0),
                child: Review(itemDetails: itemDetails),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 10, 15, 20),
                child: Buttons(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
