import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/router.dart';

class BottomListItem extends StatelessWidget {
  const BottomListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailScreen);
        },
        child: const Padding(
          padding: EdgeInsets.only(right: 10),
          child: Image(image: AssetImage(AssetsData.image2)),
        ));
  }
}
