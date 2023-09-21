import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_project/constants/colors.dart';

class ReviewTile extends StatelessWidget {
  final List itemReview;
  const ReviewTile({super.key, required this.itemReview});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: itemReview.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                itemReview[index]['reviewerName'],
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: TextColors.textColor3),
              ),
              subtitle: Text(
                itemReview[index]['review'],
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: TextColors.textColor2),
              ),
              trailing: RatingBar.builder(
                  initialRating: (itemReview[index]["starRating"].toDouble()),
                  allowHalfRating: true,
                  itemCount: 5,
                  updateOnDrag: true,
                  itemBuilder: (contxt, _) => Icon(
                        Icons.star,
                        size: 10,
                        color: PrimaryColors.primaryYellow,
                      ),
                  onRatingUpdate: (rating) {}),
            );
          }),
    );
  }
}
