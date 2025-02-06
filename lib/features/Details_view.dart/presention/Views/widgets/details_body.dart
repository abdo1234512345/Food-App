import 'package:flutter/material.dart';
import 'package:foodapp/features/Details_view.dart/presention/Views/widgets/build_conter_buttom.dart';
import 'package:foodapp/features/Details_view.dart/presention/Views/widgets/custom_burger.dart';
import 'package:foodapp/features/Details_view.dart/presention/Views/widgets/topping_side.dart';
import 'package:foodapp/features/Details_view.dart/presention/Views/widgets/total_and_order_section.dart';
import 'package:foodapp/features/Order_view/presention/views/widgets/custom_app_bar.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppbar(),
          const SizedBox(height: 30),
          CustomizeBurger(),
          const SizedBox(height: 10),
          Portioncounter(),
          SizedBox(height: 20),
          ToppingSide(),
          SizedBox(height: 50),
          TotalandOrder(),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
