import 'package:flutter/material.dart';
import 'package:book_station/core/utils/styles.dart';
class BookAuthor extends StatelessWidget {
  const BookAuthor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'J.K. Rowling', // Author
      style: styles.textStyle14.copyWith(color: Colors.grey),
    );
  }
}