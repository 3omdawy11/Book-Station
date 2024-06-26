import 'package:book_station/core/utils/router.dart';
import 'package:book_station/feature/home_page/domain/entities/book_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePageListBookItem extends StatelessWidget {
  const HomePageListBookItem({super.key, required this.bookDetails});
  final BookEntity bookDetails;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.kBookDetailScreen, extra: bookDetails);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: SizedBox(
            //height: MediaQuery.of(context).size.height * 0.35,
            child: AspectRatio(
                aspectRatio: 2.8 / 4,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: CachedNetworkImage(
                      imageUrl: bookDetails.image ?? '',
                      fit: BoxFit.fill,
                    )))),
      ),
    );
  }
}
