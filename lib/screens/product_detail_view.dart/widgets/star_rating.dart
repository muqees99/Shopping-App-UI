import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_project/Functions/get_item_map.dart';
import 'package:ui_project/constants/colors.dart';

class StarRating extends StatelessWidget {
  final List itemDetails;
  const StarRating({super.key, required this.itemDetails});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
            initialRating: (itemDetails[0]['starRating'].toDouble()),
            itemCount: 5,
            allowHalfRating: true,
            itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: PrimaryColors.primaryYellow,
                  size: 10,
                ),
            onRatingUpdate: (rating) {}),
        SizedBox(
          width: 5,
        ),
        Text(
          "110 Reviews",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: UpdatedColors.grey),
        ),
      ],
    );
  }
}
