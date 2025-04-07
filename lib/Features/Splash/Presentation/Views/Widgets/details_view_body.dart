import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:bookly/Features/Splash/Presentation/Views/Widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar(),
        BookDetailsImage(),
      ],
    );
  }
}

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.25),
      child: BookImage(),
    );
  }
}
