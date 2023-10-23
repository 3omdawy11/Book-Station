import 'package:flutter/material.dart';
import 'package:book_station/core/utils/styles.dart';

class BookAuthor extends StatelessWidget {
  const BookAuthor({
    super.key, required this.bookAuthor,
  });
  final String bookAuthor;
  @override
  Widget build(BuildContext context) {
    return Text(
      bookAuthor, // Author
      style: Styles.textStyle14.copyWith(color: Colors.grey, fontSize: 18),
    );
  }
}
