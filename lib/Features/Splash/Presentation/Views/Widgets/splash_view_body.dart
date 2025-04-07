import 'package:animate_do/animate_do.dart';
import 'package:bookly/Utils/app_router.dart';
import 'package:bookly/Utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() async {
    super.initState();
    navigateToHome();
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

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push(kHomeView);
      },
    );
  }
}
