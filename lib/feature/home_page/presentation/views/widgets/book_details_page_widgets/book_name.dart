import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class BookName extends StatelessWidget {
  const BookName({
    super.key, required this.bookName,
  });
  final String bookName;

  @override
  Widget build(BuildContext context) {
    return Text(
      bookName,
      style: Styles.textStyle20.copyWith(fontSize: 25),
      softWrap: true,
      overflow: TextOverflow.ellipsis,
    );
  }
}
