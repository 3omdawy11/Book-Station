import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/assets.dart';

class BookMiddlePicture extends StatelessWidget {
  const BookMiddlePicture({
    super.key, required this.image,
  });
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.27,
        child: AspectRatio(
          aspectRatio: 3 / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(imageUrl: image ?? '', fit: BoxFit.fill,),
          )
        ),
      ),
    );
  }
}
