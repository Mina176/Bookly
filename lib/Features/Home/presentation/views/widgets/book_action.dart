import 'package:bookly/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.175),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},
              text: '19.99€',
              backgroundColor: Colors.white,
              buttonTextStyle: Styles.textStyle15.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {},
              text: 'Free Preview',
              backgroundColor: const Color(0xFFEF8262),
              buttonTextStyle: Styles.textStyle16.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
