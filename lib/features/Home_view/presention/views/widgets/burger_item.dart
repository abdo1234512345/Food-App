import 'package:flutter/material.dart';
import 'package:foodapp/core/utils/styles.dart';
import 'package:foodapp/features/Home_view/presention/views/widgets/rating.dart';

class BurgerItem extends StatelessWidget {
  const BurgerItem(
      {super.key,
      required this.image,
      required this.text,
      required this.title,
      required this.onTap});
  final String image, text, title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.45,
          child: Padding(
            padding: const EdgeInsets.only(left: 11),
            child: Column(
              children: [
                Image.asset(
                  image,
                  height: 121.76,
                  width: 120,
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    text,
                    style: Styles.robtomedian16.copyWith(
                      color: Color(0xff3C2F2F),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: Styles.robtomedian14.copyWith(
                      color: Color(0xff3C2F2F),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Rating(
                  width: 65,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
