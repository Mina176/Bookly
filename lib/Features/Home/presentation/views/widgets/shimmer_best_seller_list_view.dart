import 'package:bookly/Features/Home/presentation/views/widgets/shimmer_featured_list_view.dart';
import 'package:flutter/material.dart';

class ShimmerBestSellerListView extends StatelessWidget {
  const ShimmerBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 5,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        return const ShimmerNewestListViewItem();
      },
    );
  }
}

class ShimmerNewestListViewItem extends StatelessWidget {
  const ShimmerNewestListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: ShimmerItem(
                height: 130,
                width: 85,
              ),
            ),
            SizedBox(width: 25),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerItem(
                      height: 24,
                      width: MediaQuery.of(context).size.width * .5),
                  SizedBox(height: 12),
                  ShimmerItem(
                      height: 24,
                      width: MediaQuery.of(context).size.width * .5),
                  SizedBox(height: 12),
                  ShimmerItem(
                      height: 24,
                      width: MediaQuery.of(context).size.width * .2),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      ShimmerItem(height: 20, width: 50),
                      Spacer(),
                      ShimmerItem(height: 20, width: 60),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
