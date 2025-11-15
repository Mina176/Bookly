import 'package:flutter/material.dart';
import 'book_image.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.3,
      ),
      child: CustomBookImage(
        imageUrl: imageUrl,
      ),
    );
  }
}
