import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class BookDetailsViewBookAuthor extends StatelessWidget {
  const BookDetailsViewBookAuthor({
    super.key, required this.bookAuthor,
  });
  final String bookAuthor;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Text(
        bookAuthor,
        style: Styles.textStyle14.copyWith(
            fontSize: 18, color: Colors.grey, fontStyle: FontStyle.italic),
      ),
    );
  }
}
