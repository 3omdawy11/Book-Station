import 'package:flutter/material.dart';
import 'package:book_station/core/utils/styles.dart';
class BookPrice extends StatelessWidget {
  const BookPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '19.99 €', // Price
      style: Styles.textStyle18.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
