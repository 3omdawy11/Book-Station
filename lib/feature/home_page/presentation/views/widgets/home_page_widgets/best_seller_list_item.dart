import 'package:book_station/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/entities/book_entity.dart';
import 'best_seller_components/book_description_body.dart';
import 'best_seller_components/book_picture.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 47),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailScreen, extra: book);
        },
        child: Row(
          children: [
            BookPicture(
              image: book.image ?? '',
            ),
            BookDescription(
                bookName: book.title ?? '',
                bookAuthor: book.authorName ?? '',
                bookPrice: book.price ?? 0,
                bookRating: book.rating ?? 0,
                bookRatingCount: book.ratingCount ?? 0)
          ],
        ),
      ),
    );
  }
}
