import 'package:book_station/constants.dart';
import 'package:book_station/core/utils/styles.dart';
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
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              CustomAppBar(),
              BookMiddlePicture(),
              BookName(),
              SizedBox(
                height: 6,
              ),
              BookDetailsViewBookAuthor(),
              SizedBox(
                height: 16,
              ),
              //BookRating(),
              BookRating(),
              SizedBox(
                height: 20,
              ),
              BookDetailViewMiddleButton(),
              Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),
              BottomListHeader(),
              BottomList(),
            ],
          ),
        ),
      ),
    );
  }
}

