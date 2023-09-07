import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constants.dart';
import 'feature/splash/presentation/views/splash_view.dart';

void main() => runApp(const BookStation());
class BookStation extends StatelessWidget {
  const BookStation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kScaffoldBackGroundColor
      ),
      home: const SplashView(),
    );
  }
}
