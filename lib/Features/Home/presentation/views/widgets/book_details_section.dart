import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';
import 'book_action.dart';
import 'book_details_image.dart';
import 'rating.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
