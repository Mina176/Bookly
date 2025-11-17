import 'package:bookly/Core/widgets/custom_error_widget.dart';
import 'package:bookly/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/Core/Utils/styles.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/shimmer_best_seller_list_view.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            sliver: NewestBookListView()),
      ],
    );
  }
}
