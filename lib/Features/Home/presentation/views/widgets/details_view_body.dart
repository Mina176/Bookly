import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'book_details_section.dart';
import 'similar_books_Section.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar(
          closeIconOnPressed: () => GoRouter.of(context).pop(),
        ),
        SizedBox(height: 36),
        BookDetailsSection(),
        Expanded(child: SizedBox(height: 32)),
        SimilarBooksSection(),
        SizedBox(height: 40),
      ],
    );
  }
}
