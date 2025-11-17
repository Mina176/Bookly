import 'package:bookly/Core/widgets/custom_error_widget.dart';
import 'package:bookly/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/shimmer_best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBookListView extends StatelessWidget {
  const NewestBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return NewestBooksListViewItem(
                  book: state.books[index],
                );
              },
              childCount: state.books.length,
            ),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ShimmerNewestListViewItem();
              },
              childCount: 5,
            ),
          );
        }
      },
    );
  }
}
