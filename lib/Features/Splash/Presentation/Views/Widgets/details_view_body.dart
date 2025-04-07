import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:bookly/Features/Splash/Presentation/Views/Widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar(),
        BookDetailsImage(),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(color: kAuthorfontColor),
        )
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
      padding: EdgeInsets.symmetric(horizontal: width * 0.3, vertical: 40),
      child: BookImage(),
    );
  }
}
