import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('⭐ 4.8',style: Styles.textStyle18.copyWith(fontSize: 16),),
        const SizedBox(
          width: 4,
        ),
        Text('(2390)',style: Styles.textStyle14.copyWith(color: Colors.grey),)
      ],
    );
  }
}


