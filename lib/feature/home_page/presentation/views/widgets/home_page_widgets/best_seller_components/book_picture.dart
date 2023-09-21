import 'package:flutter/material.dart';
import 'package:book_station/core/utils/assets.dart';

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
