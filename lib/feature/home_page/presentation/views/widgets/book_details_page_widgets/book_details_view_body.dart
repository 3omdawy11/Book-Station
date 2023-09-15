import 'package:book_station/core/utils/assets.dart';
import 'package:book_station/core/utils/router.dart';
import 'package:book_station/core/utils/styles.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/book_details_page_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../home_page_widgets/best_seller_components/book_description_components/book_author.dart';
import '../home_page_widgets/best_seller_components/book_description_components/book_rating.dart';
import 'book_name.dart';
import 'book_middle_picture.dart';
import 'bottom_list.dart';
import 'bottom_list_header.dart';
import 'bottom_list_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            BookMiddlePicture(),
            BookName(),
            SizedBox(
              height: 6,
            ),
            BookAuthor(),
            SizedBox(
              height: 16,
            ),
            BookRating(),
            SizedBox(
              height: 40,
            ),
            BottomListHeader(),
            BottomList(),
          ],
        ),
      ),
    );
  }
}
