import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';

class BookDetailViewMiddleButton extends StatelessWidget {
  const BookDetailViewMiddleButton({
    super.key, required this.bookPrice,
  });
  final num bookPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          border: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          onPressed: () {},
          backgroundColor: const Color(0xffFFFFFF),
          label: Text(
            (bookPrice == 0.0) ? 'FREE' : '$bookPrice€',
            style: Styles.textStyle18
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        CustomButton(
          border: const BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
          onPressed: () {},
          backgroundColor: const Color(0xffEF8262),
          label: const Text(
            'Free Preview',
            style: Styles.textStyle16,
          ),
        ),
      ],
    );
  }
}
