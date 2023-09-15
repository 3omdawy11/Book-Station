import 'package:flutter/material.dart';
import 'package:book_station/core/utils/styles.dart';
class BookName extends StatelessWidget {
  const BookName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
        'Harry Potter and the Goblet Fire', // Title
        style: Styles.textStyle20,
        maxLines: 2,
        overflow: TextOverflow.ellipsis
    );
  }
}