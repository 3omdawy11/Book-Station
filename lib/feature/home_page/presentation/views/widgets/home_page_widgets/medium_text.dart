import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';

class MediumText extends StatelessWidget {
  const MediumText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 51, bottom: 20),
      child: Text(
        'Best Seller',
        style: Styles.textStyle18,
      ),
    );
  }
}
