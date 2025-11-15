import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerFeaturedListView extends StatelessWidget {
  const ShimmerFeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemCount: 4,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ShimmerItem(
          height: MediaQuery.of(context).size.height * .3,
          width: MediaQuery.of(context).size.width * .4,
        ),
      ),
    );
  }
}

class ShimmerItem extends StatelessWidget {
  const ShimmerItem({super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: LinearGradient(
        colors: [
          Colors.grey.shade500,
          Colors.grey.shade400,
          Colors.grey.shade500,
        ],
        begin: Alignment(-1.0, -0.3),
        end: Alignment(1.0, 0.3),
        stops: [0.4, 0.5, 0.6],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
