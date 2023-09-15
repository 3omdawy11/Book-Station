import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
class BookName extends StatelessWidget {
  const BookName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'The Jungle Book',
      style: Styles.textStyle20.copyWith(fontSize: 30),
    );
  }
}