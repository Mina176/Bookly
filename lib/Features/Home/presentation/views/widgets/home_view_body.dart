import 'package:bookly/Features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/Core/Utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Utils/app_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: CustomAppBar(
                  onPressed: () => GoRouter.of(context).push(kSearchView),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding, vertical: kVerticalPadding),
                child: FeaturedBooksListView(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: Text(
                  'Newest books',
                  style: Styles.textStyle20,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
