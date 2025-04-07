import 'package:bookly/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
        Opacity(
          opacity: .55,
          child: Text(
            '(2390)',
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
