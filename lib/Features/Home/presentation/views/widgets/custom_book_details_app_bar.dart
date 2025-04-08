import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({
    super.key,
    required this.closeIconOnPressed,
  });
  final VoidCallback closeIconOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: closeIconOnPressed,
            icon: const Icon(Icons.close),
            iconSize: 32,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
            iconSize: 32,
          ),
        ],
      ),
    );
  }
}
