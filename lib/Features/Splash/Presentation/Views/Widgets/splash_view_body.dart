import 'package:animate_do/animate_do.dart';
import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/Utils/assets.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => HomeView(),
          transition: Transition.fadeIn, duration: kTransitionDuration);
    });
  }

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
