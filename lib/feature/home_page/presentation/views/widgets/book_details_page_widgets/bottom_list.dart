import 'package:flutter/material.dart';

import 'bottom_list_item.dart';
class BottomList extends StatelessWidget {
  const BottomList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.15,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (
              BuildContext context,
              int index,
              ) {
            return const BottomListItem();
          },
        ),
      ),
    );
  }
}
