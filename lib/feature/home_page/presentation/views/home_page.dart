import 'package:book_station/core/utils/fonts.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/featured_list.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/app_bar.dart';
import 'package:book_station/feature/home_page/presentation/views/widgets/medium_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomePageAppBar(),
              FeaturedList(),
              MediumText()
            ],
          ),
        ),
      ),
    );
  }
}





