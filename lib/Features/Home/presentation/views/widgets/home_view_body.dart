import 'package:bookly/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/list_view_cover_item.dart';
import 'package:bookly/Utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        ListViewCoverItem(),
      ],
    );
  }
}
