import 'package:bookly/Utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30,
          child: Image.asset(Assets.logo),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.magnifyingGlass),
        ),
      ],
    );
  }
}
