import 'package:flutter/material.dart';
import 'package:book_station/core/utils/styles.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({
    super.key, required this.bookPrice,
  });
  final num bookPrice;

  @override
  Widget build(BuildContext context) {
    return Text(
      bookPrice == 0.0 ? 'FREE' : '$bookPrice€', // Price
      style: Styles.textStyle18.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
