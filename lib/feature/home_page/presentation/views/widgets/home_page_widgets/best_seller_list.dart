import 'package:book_station/feature/home_page/domain/entities/book_entity.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/home_page_widgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key, required, required this.books });
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return BookListViewItem(book: books[index],);
      },
    );
  }
}
