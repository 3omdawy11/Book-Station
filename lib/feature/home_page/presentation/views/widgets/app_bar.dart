import 'package:book_station/core/utils/assets.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,top: 15,bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 80,
            width: 90,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
          ),

        ],
      ),
    );
  }
}
