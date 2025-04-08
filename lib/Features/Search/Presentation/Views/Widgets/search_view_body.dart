import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: CustomSearchTextField(),
              ),
            ),
            SliverFillRemaining(
              child: SearchResultListView(),
            ),
          ],
        ));
  }
}
