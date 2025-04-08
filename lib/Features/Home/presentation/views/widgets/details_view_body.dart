import 'package:bookly/Features/Home/presentation/views/widgets/book_details_image.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_action.dart';
import 'rating.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar(),
        SizedBox(height: 36),
        BookDetailsImage(),
        SizedBox(height: 43),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        SizedBox(height: 4),
        Opacity(
          opacity: .7,
          child: Text('Rudyard Kipling', style: Styles.textStyle18),
        ),
        SizedBox(height: 8),
        Rating(),
        SizedBox(height: 32),
        BookAction(),
      ],
    );
  }
}
