import 'package:book_station/core/utils/assets.dart';
import 'package:book_station/feature/home_page/presentation/views/home_page.dart';
import 'package:book_station/feature/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {
    super.initState();
    initSlideAnimation();
    navigateHome();
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slideAnimation: slideAnimation)
      ],
    );
  }

  @override
  void dispose() {
    animationController.dispose();
  }


  void initSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slideAnimation =
        Tween<Offset>(begin: const Offset(0, 20), end: const Offset(0, -4))
            .animate(animationController);
    animationController.forward();
  }


  void navigateHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(const HomePage(),transition: Transition.leftToRight);
    });
  }
}
