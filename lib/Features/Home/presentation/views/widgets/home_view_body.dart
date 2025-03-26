import 'package:bookly/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly/Utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      child: Column(
        children: [
          CustomAppBar(),
          FeaturedListView(),
        ],
      ),
    );
  }
}

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 100,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: FeaturedListViewItem(),
            );
          },
        ),
      ),
    );
  }
}
