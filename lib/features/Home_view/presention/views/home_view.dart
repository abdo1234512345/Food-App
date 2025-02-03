import 'package:flutter/material.dart';

import 'package:foodapp/features/Home_view/presention/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: HomeViewBody(),
    );
  }
}
