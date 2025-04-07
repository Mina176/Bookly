import 'package:bookly/Utils/assets.dart';
import 'package:bookly/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 11,
      itemBuilder: (context, index) {
        return BestSellerListViewItem();
      },
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 0.7,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(Assets.truth),
                  ),
                ),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle15,
                      ),
                      Spacer(),
                      Rating()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
