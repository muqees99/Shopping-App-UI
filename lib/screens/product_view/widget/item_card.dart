import 'package:flutter/material.dart';
import 'package:ui_project/constants/colors.dart';
import 'package:ui_project/screens/product_detail_view.dart/product_detail_view.dart';
import 'package:ui_project/toast/custom_toast.dart';

class ProductItemCard extends StatelessWidget {
  final Map tagList;

  final int index;
  const ProductItemCard({
    super.key,
    required this.tagList,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductDetailView(
                itemName: tagList['itemName'],
              );
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: TextColors.textColor1,
            border: Border.all(
              width: 0.5,
              color: TextColors.textColor2,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.asset("${tagList['itemImage']}"),
                    height: 150,
                    width: 130,
                  ),
                  FloatingActionButton.small(
                    backgroundColor: UpdatedColors.blue,
                    heroTag: "${tagList['itemName']}$index",
                    onPressed: () {
                      CustomToast.showToast("Added to cart");
                    },
                    child: Icon(
                      Icons.add,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              thickness: 1,
              color: TextColors.textColor2,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 5),
              child: Text(
                "\$ ${tagList['itemUnit']}",
                style: TextStyle(
                    color: UpdatedColors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ),
            Container(
              height: 20,
              margin: EdgeInsets.only(left: 20),
              child: Text("${tagList['itemName']}"),
            )
          ],
        ),
      ),
    );
  }
}
