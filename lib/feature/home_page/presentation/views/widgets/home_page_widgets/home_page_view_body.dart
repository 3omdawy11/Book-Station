import 'package:flutter/material.dart';
import 'featured_list_bloc_builder.dart';
import 'home_page_app_bar.dart';
import 'best_seller_list.dart';
import 'medium_text.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomePageAppBar(),
                  FeaturedListBlocBuilder(),
                  MediumText(),
                  BestSellerList()
                ],
              ),
            ),
          ),
        ),
      ], // Sliver
    );
  }
}

