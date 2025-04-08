import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 100,
      itemBuilder: (context, index) {
        return VerticalListViewItem();
      },
    );
  }
}
