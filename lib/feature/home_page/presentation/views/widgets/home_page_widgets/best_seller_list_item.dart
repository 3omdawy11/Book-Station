import 'package:book_station/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'best_seller_components/book_description_body.dart';
import 'best_seller_components/book_picture.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 47),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailScreen);
        },
        child: const Row(
          children: [BookPicture(), BookDescription()],
        ),
      ),
    );
  }
}
