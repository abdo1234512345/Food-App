import 'package:flutter/material.dart';
import 'package:foodapp/constants/assets.dart';
import 'package:foodapp/features/Home_view/presention/views/widgets/burger_item.dart';
import 'package:foodapp/features/Order_view/presention/views/order_view.dart';

class BurgerSection extends StatelessWidget {
  const BurgerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BurgerItem(
              image: Assets.assetsImagesBurger1,
              text: 'Cheeseburger',
              title: "Wendy's Burger",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderView(
                      title: "Cheeseburger Wendy's Burger",
                      price: r"$8.24",
                      text:
                          "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy.",
                      image: Assets.assetsImagesBurger1,
                    ),
                  ),
                );
              },
            ),
            BurgerItem(
              image: Assets.assetsImagesBurger2,
              text: 'Hamburger',
              title: "Veggie Burger",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderView(
                      title: "Hamburger Veggie Burger",
                      price: r"$9.99",
                      text:
                          "Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. ",
                      image: Assets.assetsImagesBurger2,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BurgerItem(
              image: Assets.assetsImagesBurger3,
              text: 'Hamburger',
              title: "Chicken Burger",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderView(
                      title: "Hamburger Chicken Burger",
                      price: r"$12.48",
                      text:
                          "Our chicken burger is a delicious and healthier alternative to traditional beef burgers, perfect for those looking for a lighter meal option. Try it today and experience the mouth-watering flavors of our Hamburger Chicken Burger!",
                      image: Assets.assetsImagesBurger3,
                    ),
                  ),
                );
              },
            ),
            BurgerItem(
              image: Assets.assetsImagesBurger4,
              text: 'Hamburger',
              title: "Fried Chicken Burger",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderView(
                      title: "Fried Chicken Burger",
                      price: r"$26.99",
                      text:
                          "Indulge in our crispy and savory Fried Chicken Burger, made with a juicy chicken patty, hand-breaded and deep-fried to perfection, served on a warm bun with lettuce, tomato, and a creamy sauce.",
                      image: Assets.assetsImagesBurger4,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
