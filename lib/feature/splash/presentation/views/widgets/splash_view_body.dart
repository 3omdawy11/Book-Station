import 'package:book_station/core/utils/assets.dart';
import 'package:flutter/material.dart';
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const Text('Elevate Your Knowledge',textAlign: TextAlign.center,)
      ],
    );
  }
}
