import 'package:flutter/material.dart';
import 'book_description_components/book_author.dart';
import 'book_description_components/book_name.dart';
import 'book_description_components/book_price.dart';
import 'book_description_components/book_rating.dart';

class BookDescription extends StatelessWidget {
  const BookDescription({
    super.key, required this.bookName, required this.bookAuthor, required this.bookPrice, required this.bookRating, required this.bookRatingCount,
  });
  final String bookName;
  final String bookAuthor;
  final num bookPrice;
  final num bookRating;
  final num bookRatingCount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookName(bookName: bookName),
            const SizedBox(
              height: 3,
            ),
            BookAuthor(bookAuthor: bookAuthor),
            const SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BookPrice(bookPrice :bookPrice),
                BookRating(bookRating: bookRating, bookRatingCount: bookRatingCount,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
