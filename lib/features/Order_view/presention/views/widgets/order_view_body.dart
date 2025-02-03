import 'package:flutter/material.dart';
import 'package:foodapp/core/utils/styles.dart';
import 'package:foodapp/features/Order_view/presention/views/widgets/custom_app_bar.dart';
import 'package:foodapp/features/Order_view/presention/views/widgets/custom_order_buttom.dart';

class OrderViewBody extends StatefulWidget {
  const OrderViewBody({
    super.key,
    required this.title,
    required this.text,
    required this.image,
    required this.price,
  });

  final String title, text, image, price;

  @override
  State<OrderViewBody> createState() => OrderViewBodyState();
}

class OrderViewBodyState extends State<OrderViewBody> {
  double _spicyLevel = 0.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 19),
          child: CustomAppbar(),
        ),
        Image.asset(
          widget.image, // Fixed
          height: 340,
          width: 350,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 19, right: 29),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                widget.title, // Fixed
                style: Styles.robtomedian16.copyWith(
                  color: const Color(0xff3C2F2F),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Row(
            children: [
              const Icon(
                Icons.star,
                size: 24,
                color: Color(0xffFF9633),
              ),
              Text(
                "4.9   --",
                style: Styles.robtomedian16.copyWith(
                  color: const Color(0xff3C2F2F),
                ),
              ),
              Text(
                "   26 mins",
                style: Styles.robtomedian16.copyWith(
                  color: const Color(0xff3C2F2F),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 19),
          child: Text(
            widget.text, // Fixed
            style: Styles.robtoregular18.copyWith(
              color: const Color(0xff6A6A6A),
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Spicy",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Text(
                    "Mild",
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  ),
                  Slider(
                    value: _spicyLevel,
                    onChanged: (value) {
                      setState(() {
                        _spicyLevel = value;
                      });
                    },
                    min: 0,
                    max: 5,
                    activeColor: const Color(0xffEF2A39),
                    inactiveColor: const Color(0xfff3f4f6), // Fixed
                  ),
                  const Text(
                    "Hot",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomOrderButtom(price: widget.price),
      ],
    );
  }
}
