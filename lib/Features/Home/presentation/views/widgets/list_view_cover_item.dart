
import 'package:bookly/Utils/assets.dart';
import 'package:flutter/material.dart';

class ListViewCoverItem extends StatelessWidget {
  const ListViewCoverItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: AspectRatio(
          aspectRatio: 0.75,
          child: Container(
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Assets.truth),
            ),
          ))),
    );
  }
}
