import 'package:flutter/material.dart';
import '../../../../../core/utils/fonts.dart';


class MediumText extends StatelessWidget {
  const MediumText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 43),
      child: Text('Best Seller',style: Fonts.mediumStyle,),
    );
  }
}