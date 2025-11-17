import 'package:bookly/Features/Home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly/Features/Search/Presentation/manager/search_books/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return state.books.isNotEmpty
                  ? NewestBooksListViewItem(
                      book: state.books[index],
                    )
                  : Center(
                      child: Text('No results found...'),
                    );
            },
          );
        } else if (state is SearchBooksFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
