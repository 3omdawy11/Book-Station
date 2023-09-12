import 'package:book_station/feature/home_page/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        //itemCount: ,
        itemBuilder: (BuildContext context, int index) {
          return const BestSellerItem();
        },
      ),
    );
  }
}
