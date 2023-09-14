import 'package:flutter/material.dart';
import 'package:book_station/core/utils/styles.dart';
class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '⭐4.8 ', // Rating
          style: styles.textStyle18.copyWith(fontSize: 16),
        ),
        Text(
          '(2390)', // No. of rates
          style: styles.textStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
