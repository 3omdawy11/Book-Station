import 'package:flutter/material.dart';
import 'package:book_station/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key, required this.bookRating,
  });
  final num bookRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '⭐$bookRating', // Rating
          style: Styles.textStyle18.copyWith(fontSize: 16),
        ),
        Text(
          ' (2390)', // No. of rates
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
