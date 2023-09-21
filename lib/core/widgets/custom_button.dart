import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key, // Replace super.key with Key? key
    this.border,
    required this.onPressed,
    required this.backgroundColor,
    required this.label,
  }) : super(key: key);

  final BorderRadius? border;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Text label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      child: AspectRatio(
        aspectRatio: kButtonAspectRatio,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: border ?? BorderRadius.circular(8),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
          ),
          onPressed: onPressed,
          child: label,
        ),
      ),
    );
  }
}
