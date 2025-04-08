import 'package:flutter/material.dart';
import 'book_image.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.3,
      ),
      child: BookImage(),
    );
  }
}
