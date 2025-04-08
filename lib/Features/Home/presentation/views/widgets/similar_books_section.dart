import 'package:bookly/Features/Home/presentation/views/widgets/similar_books_list_view_item.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text('You might also like', style: Styles.textStyle16),
        ),
        SizedBox(height: 8),
        SimilarBooksListView(),
      ],
    );
  }
}
