import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
class BookAuthor extends StatelessWidget {
  const BookAuthor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Rudyard Kipling',
      style:
      Styles.textStyle14.copyWith(fontSize: 18, color: Colors.grey),
    );
  }
}
