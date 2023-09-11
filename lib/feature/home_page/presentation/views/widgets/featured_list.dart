import 'package:flutter/material.dart';

import 'list_item.dart';
class FeaturedList extends StatelessWidget {
  const FeaturedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.33,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (
            BuildContext context,
            int index,
            ) {
          return const HomePageListBookItem();
        },
      ),
    );
  }
}