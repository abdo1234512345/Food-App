import 'package:flutter/material.dart';
import 'package:foodapp/constants/assets.dart';
import 'package:foodapp/core/utils/styles.dart';

class CustomizeBurger extends StatelessWidget {
  const CustomizeBurger({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          Assets.assetsImagesIngeburger,
          width: 200,
          height: 297,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Customize Your Burger",
                style: Styles.robtomedian16.copyWith(
                  color: Color(
                    0xff3C2F2F,
                  ),
                ),
              ),
              Text(
                "To Your Tastes",
                style: Styles.robtomedian16.copyWith(
                  color: Color(
                    0xff3C2F2F,
                  ),
                ),
              ),
              Text(
                "Ultimate Experience",
                style: Styles.robtomedian16.copyWith(
                  color: Color(
                    0xff3C2F2F,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
