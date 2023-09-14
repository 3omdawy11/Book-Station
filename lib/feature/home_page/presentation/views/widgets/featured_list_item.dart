import 'package:book_station/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomePageListBookItem extends StatelessWidget {
  const HomePageListBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: SizedBox(
        //height: MediaQuery.of(context).size.height * 0.35,
        child: AspectRatio(
          aspectRatio: 2.8/4,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetsData.image1),
              )
            ),
          ),
        ),
      ),
    );
  }
}
