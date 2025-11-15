import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/rating.dart';
import 'package:bookly/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/app_router.dart';

class VerticalListViewItem extends StatelessWidget {
  const VerticalListViewItem({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(kDetailsView, extra: book);
        },
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              CustomBookImage(imageUrl: book.volumeInfo.imageLinks!.thumbnail),
              SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        book.volumeInfo.title!,
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      book.volumeInfo.authors?[0] ?? 'Unknown',
                      maxLines: 1,
                      style: Styles.textStyle14,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle15,
                        ),
                        Spacer(),
                        BookRating(
                          rating: book.volumeInfo.averageRating ?? 0,
                          count: book.volumeInfo.ratingsCount ?? 0,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
