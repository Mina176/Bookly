import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
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


