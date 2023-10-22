import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class BookDetailsViewBookAuthor extends StatelessWidget {
  const BookDetailsViewBookAuthor({
    super.key, required this.authorName,
  });
  final String authorName;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Text(
        'Rudyard Kipling',
        style: Styles.textStyle14.copyWith(
            fontSize: 18, color: Colors.grey, fontStyle: FontStyle.italic),
      ),
    );
  }
}
