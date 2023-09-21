import 'package:book_station/core/utils/assets.dart';
import 'package:book_station/core/utils/router.dart';
import 'package:book_station/feature/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Image.asset(
            AssetsData.logo,
            fit: BoxFit.fitWidth,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
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
        Tween<Offset>(begin: const Offset(0, 20), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  void navigateHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kHomeScreen);
    });
  }
}
