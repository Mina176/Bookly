import 'package:bookly/Features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/Core/Utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomHomeAppBar(),
          ),
        ),
        SliverToBoxAdapter(
          child: FeaturedListView(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Text(
              'Best Seller',
              style: Styles.textStyle20,
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
