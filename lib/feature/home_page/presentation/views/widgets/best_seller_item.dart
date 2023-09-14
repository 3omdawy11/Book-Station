import 'package:book_station/core/utils/assets.dart';
import 'package:book_station/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20, right: 47),
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
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookName(),
            SizedBox(
              height: 3,
            ),
            BookAuthor(),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BookPrice(),
                BookRating(),
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


class BookName extends StatelessWidget {
  const BookName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Harry Potter and the Goblet Fire', // Title
      style: styles.textStyle20,
      maxLines: 2,
      overflow: TextOverflow.ellipsis
    );
  }
}

class BookAuthor extends StatelessWidget {
  const BookAuthor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'J.K. Rowling', // Author
      style: styles.textStyle14.copyWith(color: Colors.grey),
    );
  }
}

class BookPrice extends StatelessWidget {
  const BookPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '19.99 €', // Price
      style: styles.textStyle18.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '⭐4.8 ', // Rating
          style: styles.textStyle18.copyWith(fontSize: 16),
        ),
        Text(
          '(2390)', // No. of rates
          style: styles.textStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}



