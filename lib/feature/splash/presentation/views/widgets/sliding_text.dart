import 'package:book_station/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
          position: slideAnimation,
          child: const Text(
            'Elevate Your Knowledge',
            textAlign: TextAlign.center,
            style: Styles.textStyle18,
          ),
        );
      },
    );
  }
}
