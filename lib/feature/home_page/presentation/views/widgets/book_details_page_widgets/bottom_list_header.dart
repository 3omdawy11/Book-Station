import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
class BottomListHeader extends StatelessWidget {
  const BottomListHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20,bottom: 20),

      child: Align(alignment: Alignment.centerLeft,child: Text('You can also like',style: Styles.textStyle14,)),
    );
  }
}
