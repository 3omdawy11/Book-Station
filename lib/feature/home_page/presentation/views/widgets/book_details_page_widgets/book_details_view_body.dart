import 'package:book_station/feature/home_page/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/book_details_page_widgets/book_author.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/book_details_page_widgets/book_details_view_middle_button.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/book_details_page_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../home_page_widgets/best_seller_components/book_description_components/book_rating.dart';
import 'book_name.dart';
import 'book_middle_picture.dart';
import 'bottom_list.dart';
import 'bottom_list_header.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final selectedBook = context.watch<FeaturedBooksCubit>().getSelectedBook();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              const CustomAppBar(),
              BookMiddlePicture(image : selectedBook?.image),
              BookName(bookName : selectedBook!.title),
              const SizedBox(
                height: 6,
              ),
              BookDetailsViewBookAuthor(authorName : selectedBook.authorName ?? ''),
              const SizedBox(
                height: 16,
              ),
              BookRating(bookRating: selectedBook.rating ?? 0.0,),
              const SizedBox(
                height: 20,
              ),
              BookDetailViewMiddleButton(bookPrice : selectedBook.price ?? 0),
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
