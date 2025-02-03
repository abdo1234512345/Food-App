import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/core/utils/styles.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 24,
          color: Color(0xffFF9633),
        ),
        Text(
          "4.9",
          style: Styles.robtomedian16.copyWith(color: Color(0xff3C2F2F)),
        ),
        SizedBox(
          width: width,
        ),
        Icon(
          FontAwesomeIcons.heart,
          size: 24,
        )
      ],
    );
  }
}
