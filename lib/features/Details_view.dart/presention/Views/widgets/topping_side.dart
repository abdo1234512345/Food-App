import 'package:flutter/material.dart';
import 'package:foodapp/constants/assets.dart';
import 'package:foodapp/core/utils/styles.dart';
import 'package:foodapp/features/Details_view.dart/presention/Views/widgets/topping_card.dart';

class ToppingSide extends StatelessWidget {
  const ToppingSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Text(
            "Toppings",
            style: Styles.robtomedian18.copyWith(
                color: Color(0xff3C2F2F), fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            ToppingItem(
              image: Assets.assetsImagesTomato,
              text: 'Tomato',
            ),
            ToppingItem(
              image: Assets.assetsImagesOnion,
              text: 'Onions',
            ),
            ToppingItem(
              image: Assets.assetsImagesPickels,
              text: 'Pickels',
            )
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Text(
            "Side Options",
            style: Styles.robtomedian18.copyWith(
                color: Color(0xff3C2F2F), fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            ToppingItem(
              image: Assets.assetsImagesFries,
              text: 'Fires',
            ),
            ToppingItem(
              image: Assets.assetsImagesSalad,
              text: 'Salad',
            ),
            ToppingItem(
              image: Assets.assetsImagesOnioncaramel,
              text: ' Onion',
            )
          ],
        ),
      ],
    );
  }
}
