import 'package:book_station/feature/home_page/domain/entities/book_entity.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/book_details_page_widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return BookDetailsViewBody(book : book);
  }
}
