import 'package:animate_do/animate_do.dart';
import 'package:bookly/Utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeInDown(
          duration: Duration(milliseconds: 1500),
          child: Image.asset(Assets.logo),
        ),
        FadeInUp(
          duration: Duration(milliseconds: 1500),
          from: 100,
          child: Text(
            'Reading is for Everyone',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
