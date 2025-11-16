import 'package:auto_size_text/auto_size_text.dart';
import 'package:bookly/Core/functions/url_launcher.dart';
import 'package:bookly/Core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Utils/styles.dart';
import 'book_action.dart';
import 'book_details_image.dart';
import 'rating.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookDetailsImage(
          imageUrl: book.volumeInfo.imageLinks!.thumbnail,
        ),
        SizedBox(height: 43),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AutoSizeText(
            book.volumeInfo.title!,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Styles.textStyle30,
          ),
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AutoSizeText(book.volumeInfo.authors?[0] ?? 'Unknown',
              maxLines: 1,
              style: Styles.textStyle18.copyWith(color: Colors.grey)),
        ),
        SizedBox(height: 8),
        BookRating(
          count: book.volumeInfo.ratingsCount ?? 0,
          rating: book.volumeInfo.averageRating?.toDouble() ?? 0,
        ),
        SizedBox(height: 16),
        BookAction(
          onPressed: () => launchURL(book.volumeInfo.previewLink!),
        ),
      ],
    );
  }
}
