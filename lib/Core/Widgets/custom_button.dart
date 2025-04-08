import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.buttonTextStyle,
    this.backgroundColor = Colors.white,
    required this.onPressed,
    required this.borderRadius,
  });
  final String text;
  final TextStyle? buttonTextStyle;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      child: Text(
        text,
        style: buttonTextStyle ?? const TextStyle(color: Colors.black),
      ),
    );
  }
}
