import 'package:flutter/material.dart';
import 'package:book_station/core/utils/styles.dart';

class BookName extends StatelessWidget {
  const BookName({
    super.key, required this.bookName,
  });
  final String bookName;
  @override
  Widget build(BuildContext context) {
    return Text(bookName, // Title
        style: Styles.textStyle20,
        maxLines: 2,
        overflow: TextOverflow.ellipsis);
  }
}
