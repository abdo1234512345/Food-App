import 'package:flutter/material.dart';
import 'package:foodapp/constants/assets.dart';
import 'package:foodapp/features/Home_view/presention/views/home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeView(),
        ),
      );
    });
    return Scaffold(
      backgroundColor: Color(0xffEF2A39),
      body: SafeArea(child: Image.asset(Assets.assetsImagesSplashscreen)),
    );
  }
}
