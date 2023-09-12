import 'package:book_station/core/utils/assets.dart';
import 'package:book_station/core/utils/fonts.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20, right: 35),
      child: Row(
        children: [BookPicture(), BookDescription()],
      ),
    );
  }
}

class BookDescription extends StatelessWidget {
  const BookDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Harry Potter and the Goblet of Fire', // Title
              style: Fonts.textStyle20,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'J.K. Rowling', // Author
              style: Fonts.textStyle14.copyWith(color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '19.99 €', // Price
                  style: Fonts.textStyle18.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '⭐4.8 ', // Rating
                      style: Fonts.textStyle18.copyWith(fontSize: 16),
                    ),
                    Text(
                      '(2390)', // No. of rates
                      style: Fonts.textStyle14.copyWith(color: Colors.grey),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BookPicture extends StatelessWidget {
  const BookPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red,
              image:
                  const DecorationImage(image: AssetImage(AssetsData.image2))),
        ),
      ),
    );
  }
}
