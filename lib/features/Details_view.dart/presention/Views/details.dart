import 'package:flutter/material.dart';
import 'package:foodapp/features/Details_view.dart/presention/Views/widgets/details_body.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(child: DetailsBody()),
    );
  }
}
