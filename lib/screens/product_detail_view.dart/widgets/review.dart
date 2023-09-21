import 'package:flutter/material.dart';
import 'package:ui_project/constants/colors.dart';
import 'package:ui_project/screens/product_detail_view.dart/widgets/review_tile.dart';

class Review extends StatefulWidget {
  final List itemDetails;
  // final List itemReview;
  const Review({
    super.key,
    required this.itemDetails,
  });

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  bool showReview = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Review",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: TextColors.textColor3),
                ),
                SizedBox(
                  width: 0,
                ),
                (!showReview)
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            showReview = true;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 30,
                          color: UpdatedColors.black,
                        ))
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            showReview = false;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_drop_up_sharp,
                          size: 30,
                          color: UpdatedColors.black,
                        ),
                      ),
              ],
            ),
            (showReview)
                ? Container(
                    width: 360,
                    height: 150,
                    child: ReviewTile(
                        itemReview: widget.itemDetails[0]['itemReview']),
                  )
                : Container(),
          ],
        )
      ],
    );
  }
}
