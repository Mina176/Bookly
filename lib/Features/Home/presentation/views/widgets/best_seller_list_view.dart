import 'package:bookly/Core/widgets/custom_error_widget.dart';
import 'package:bookly/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/shimmer_best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                var book = state.books[index];
                return VerticalListViewItem(
                  book: book,
                );
              });
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        return const ShimmerBestSellerListView();
      },
    );
  }
}
