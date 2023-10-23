import 'package:book_station/feature/home_page/domain/entities/book_entity.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/book_details_page_widgets/book_author.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/book_details_page_widgets/book_details_view_middle_button.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/book_details_page_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../home_page_widgets/best_seller_components/book_description_components/book_rating.dart';
import 'book_name.dart';
import 'book_middle_picture.dart';
import 'bottom_list.dart';
import 'bottom_list_header.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              const CustomAppBar(),
              BookMiddlePicture(bookImage : book.image ?? ''),
              BookName(bookName : book.title ?? ''),
              const SizedBox(
                height: 6,
              ),
              BookDetailsViewBookAuthor(bookAuthor : book.authorName ?? ''),
              const SizedBox(
                height: 16,
              ),
              //BookRating(),
              BookRating(bookRating: book.rating ?? 6, bookRatingCount: book.ratingCount ?? 0),
              const SizedBox(
                height: 20,
              ),
              BookDetailViewMiddleButton(bookPrice: book.price ?? 5),
              const Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const BottomListHeader(),
              const BottomList(),
            ],
          ),
        ),
      ),
    );
  }
}
