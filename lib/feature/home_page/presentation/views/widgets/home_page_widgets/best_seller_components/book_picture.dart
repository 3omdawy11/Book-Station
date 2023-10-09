import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:book_station/core/utils/assets.dart';

class BookPicture extends StatelessWidget {
  const BookPicture({
    super.key, required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(imageUrl: image, fit: BoxFit.fill,))
      ),
    );
  }
}
