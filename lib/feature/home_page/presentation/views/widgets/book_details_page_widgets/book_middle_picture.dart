import 'package:flutter/material.dart';
import '../../../../../../core/utils/assets.dart';

class BookMiddlePicture extends StatelessWidget {
  const BookMiddlePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.31,
        child: AspectRatio(
          aspectRatio: 2.85 / 4,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red,
                image: const DecorationImage(
                    image: AssetImage(AssetsData.image1))),
          ),
        ),
      ),
    );
  }
}
