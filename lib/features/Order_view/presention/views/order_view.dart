import 'package:flutter/material.dart';
import 'package:foodapp/features/Order_view/presention/views/widgets/order_view_body.dart';

class OrderView extends StatefulWidget {
  const OrderView({
    super.key,
    required this.title,
    required this.price,
    required this.text,
    required this.image,
  });
  final String title, price, text, image;

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: OrderViewBody(
        title: widget.title,
        text: widget.text,
        image: widget.image,
        price: widget.price,
      )),
    );
  }
}
