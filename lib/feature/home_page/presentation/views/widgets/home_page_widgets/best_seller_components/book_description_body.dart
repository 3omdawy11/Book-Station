import 'package:flutter/material.dart';
import 'book_description_components/book_author.dart';
import 'book_description_components/book_name.dart';
import 'book_description_components/book_price.dart';
import 'book_description_components/book_rating.dart';

class BookDescription extends StatelessWidget {
  const BookDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookName(),
            SizedBox(
              height: 3,
            ),
            BookAuthor(),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BookPrice(),
                BookRating(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
