import 'package:flutter/material.dart';
import 'package:foodapp/features/splash_view/presention/views/splash_view.dart';

void main() => runApp(FoodApp());

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
