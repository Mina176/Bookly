import 'package:bookly/Core/Utils/app_router.dart';
import 'package:bookly/Features/Home/presentation/manager/similar_book_cubit/fetch_similar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../Core/Utils/assets.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .13,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                    onTap: () => GoRouter.of(context).pushReplacement(
                        kDetailsView,
                        extra: state.books[index]),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return LoadingSimilarListView();
        }
      },
    );
  }
}

class LoadingSimilarListView extends StatelessWidget {
  const LoadingSimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .13,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Shimmer(
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.shade500,
                    Colors.grey.shade400,
                    Colors.grey.shade500,
                  ],
                  begin: Alignment(-1.0, -0.3),
                  end: Alignment(1.0, 0.3),
                  stops: [0.4, 0.5, 0.6],
                ),
                child: const SimilarBooksListViewItem()),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class SimilarBooksListViewItem extends StatelessWidget {
  const SimilarBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.truth),
          ),
        ),
      ),
    );
  }
}
